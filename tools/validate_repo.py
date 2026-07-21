from __future__ import annotations

import argparse
import json
from pathlib import Path
import re
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
EXPECTED_LOCALES = {"ar", "binary", "bn", "bo", "de", "el", "es-MX", "fa", "fr", "hi", "hu", "hy", "id", "ja", "ka", "ko", "la", "mn", "pt-BR", "ru", "sw", "ta", "th", "tr", "ur", "vi", "zh-CN"}
LINK = re.compile(r"(?<!!)\[[^\]]+\]\(([^)]+)\)")
SECRET_PATTERNS = {
    "delivery_url": re.compile(r"https?://[^\s\"'<>]+/(?:api/)?webhooks?/", re.I),
    "private_key": re.compile(r"-----BEGIN (?:OPENSSH |RSA |EC )?PRIVATE KEY-----"),
    "credential": re.compile(r"(?:password|api[_-]?key|access[_-]?token|client[_-]?secret)\s*[:=]\s*[\"'][^\"']{8,}[\"']", re.I),
    "private_path": re.compile(r"(?:[A-Z]:[/\\]Users[/\\][^/\\\r\n]+|/(?:home|root)/[^/\r\n]+)", re.I),
}

def local_links() -> list[str]:
    errors = []
    for source in ROOT.rglob("*.md"):
        if any(part in {".git", ".tmp"} for part in source.parts):
            continue
        text = source.read_text(encoding="utf-8")
        for raw in LINK.findall(text):
            target = raw.strip().split("#", 1)[0]
            if not target or target.startswith(("http://", "https://", "mailto:", "#")):
                continue
            path = (source.parent / target.replace("%20", " ")).resolve()
            if not path.exists():
                errors.append(f"broken link: {source.relative_to(ROOT).as_posix()} -> {raw}")
    return errors

def locale_errors() -> list[str]:
    root = ROOT / "docs/locales"
    codes = {path.parent.name for path in root.glob("*/README.md")}
    errors = []
    if codes != EXPECTED_LOCALES:
        errors.append(f"locale set mismatch: {sorted(codes)}")
    index = (root / "README.md").read_text(encoding="utf-8")
    mexican = (root / "es-MX/README.md").read_text(encoding="utf-8")
    if "Mexican (MX)" not in index or "Mexican (MX)" not in mexican:
        errors.append("es-MX must use the reader-facing label Mexican (MX)")
    for forbidden in ("Mexican Spanish", "Spanish (Mexico)", "Español de México"):
        if forbidden in index or forbidden in mexican:
            errors.append(f"obsolete es-MX label remains: {forbidden}")
    return errors

def secret_errors() -> list[str]:
    errors = []
    suffixes = {".md", ".txt", ".json", ".lua", ".py", ".yml", ".yaml"}
    for path in ROOT.rglob("*"):
        if not path.is_file() or path.suffix.lower() not in suffixes:
            continue
        if any(part in {".git", ".tmp", "releases"} for part in path.parts):
            continue
        text = path.read_text(encoding="utf-8", errors="replace")
        for label, pattern in SECRET_PATTERNS.items():
            if pattern.search(text):
                errors.append(f"{label}: {path.relative_to(ROOT).as_posix()}")
    return errors

def run_release_check() -> list[str]:
    result = subprocess.run([sys.executable, "-B", "tools/build_release_zip.py", "--check"], cwd=ROOT, text=True, capture_output=True)
    return [] if result.returncode == 0 else ["release check failed: " + (result.stdout + result.stderr).strip()]

def product_errors() -> list[str]:
    errors = []
    version = (ROOT / "VERSION").read_text(encoding="utf-8").strip()
    if (ROOT / "RandomDay/.randomday_version").read_text(encoding="utf-8").strip() != version:
        errors.append("RandomDay version markers differ")
    files = {path.relative_to(ROOT).as_posix() for path in ROOT.rglob("*") if path.is_file()}
    if "RandomDay/Scripts/main.lua" not in files or "RandomDay/scripts/main.lua" in files:
        errors.append("RandomDay canonical loader layout is invalid")
    releases = sorted(path.name for path in (ROOT / "releases").iterdir() if path.is_dir())
    if releases != [version]:
        errors.append(f"release directories must contain only {version}: {releases}")
    forbidden_paths = ("README.es.md", "UPDATE_REPORT.md", "docs/publication", "website")
    for relative in forbidden_paths:
        if (ROOT / relative).exists():
            errors.append(f"obsolete publication path remains: {relative}")
    return errors

def main() -> int:
    parser = argparse.ArgumentParser(); parser.parse_args()
    errors = product_errors() + locale_errors() + local_links() + secret_errors() + run_release_check()
    if errors:
        print("VALIDATION FAILED")
        for error in errors: print("- " + error)
        return 1
    print("RandomDay repository validation passed")
    return 0

if __name__ == "__main__": raise SystemExit(main())
