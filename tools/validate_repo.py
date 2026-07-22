from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
import urllib.parse

ROOT = Path(__file__).resolve().parents[1]
EXPECTED_LOCALES = {"ar", "binary", "bn", "bo", "de", "el", "es-MX", "fa", "fr", "hi", "hu", "hy", "id", "ja", "ka", "ko", "la", "mn", "pt-BR", "ru", "sw", "ta", "th", "tr", "ur", "vi", "zh-CN"}
EXPECTED_ENTRIES = {
    'ar': 'اقرأني.md',
    'binary': '01010010_01000101_01000001_01000100_01001101_01000101.md',
    'bn': 'আমাকে-পড়ুন.md',
    'bo': 'ཀློག་རོགས།.md',
    'de': 'LIES_MICH.md',
    'el': 'ΔΙΑΒΑΣΕ_ΜΕ.md',
    'es-MX': 'LÉEME.md',
    'fa': 'مرا_بخوان.md',
    'fr': 'LISEZ_MOI.md',
    'hi': 'मुझे-पढ़ें.md',
    'hu': 'OLVASS_EL.md',
    'hy': 'ԿԱՐԴԱ_ԻՆՁ.md',
    'id': 'BACA_SAYA.md',
    'ja': 'お読みください.md',
    'ka': 'წამიკითხე.md',
    'ko': '읽어주세요.md',
    'la': 'LEGE_ME.md',
    'mn': 'НАМАЙГ_УНШ.md',
    'pt-BR': 'LEIA-ME.md',
    'ru': 'ПРОЧТИ_МЕНЯ.md',
    'sw': 'NISOME.md',
    'ta': 'என்னைப்_படியுங்கள்.md',
    'th': 'โปรดอ่าน.md',
    'tr': 'BENİ_OKU.md',
    'ur': 'مجھے_پڑھیں.md',
    'vi': 'ĐỌC_TÔI.md',
    'zh-CN': '请读我.md',
}
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
            path = (source.parent / urllib.parse.unquote(target)).resolve()
            if not path.exists():
                errors.append(f"broken link: {source.relative_to(ROOT).as_posix()} -> {raw}")
    return errors

def locale_errors() -> list[str]:
    root = ROOT / "docs/locales"
    errors = []
    codes = {path.name for path in root.iterdir() if path.is_dir()}
    if codes != EXPECTED_LOCALES:
        errors.append(f"locale set mismatch: {sorted(codes)}")
    if list(root.rglob("README.md")):
        errors.append("localized entry pages must use native-language filenames, not README.md")

    manifest_path = root / "manifest.json"
    try:
        manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    except (OSError, ValueError) as exc:
        return errors + [f"invalid locale manifest: {exc}"]

    locales = manifest.get("locales", {})
    if set(locales) != EXPECTED_LOCALES:
        errors.append(f"manifest locale set mismatch: {sorted(locales)}")
        return errors
    if manifest.get("schema_version") != 1 or manifest.get("canonical_language") != "en":
        errors.append("locale manifest header is invalid")
    if manifest.get("locale_count") != len(EXPECTED_LOCALES):
        errors.append("locale manifest count is invalid")
    if manifest.get("source_document_count") != 46:
        errors.append("locale source-document count is invalid")

    canonical_sources = {"README.md"}
    canonical_sources.update(path.name for path in ROOT.glob("*.md") if path.name != "README.md")
    canonical_sources.update(
        path.relative_to(ROOT).as_posix()
        for path in (ROOT / "docs").rglob("*.md")
        if "locales" not in path.relative_to(ROOT / "docs").parts
    )
    if len(canonical_sources) != 46:
        errors.append(f"canonical source-document count changed: {len(canonical_sources)}")

    index = (root / "LANGUAGES.md").read_text(encoding="utf-8")
    expected_localized = set()
    for code in sorted(EXPECTED_LOCALES):
        locale = locales[code]
        expected_entry = f"docs/locales/{code}/{EXPECTED_ENTRIES[code]}"
        if locale.get("entry") != expected_entry:
            errors.append(f"{code} native entry mismatch: {locale.get('entry')}")
        encoded_entry = urllib.parse.quote(EXPECTED_ENTRIES[code], safe="/@:+#._-~")
        if f"({code}/{encoded_entry})" not in index:
            errors.append(f"language index does not link {code} native entry")
        documents = locale.get("documents", [])
        if len(documents) != 46:
            errors.append(f"{code} document count is {len(documents)}")
            continue
        if {record.get("source") for record in documents} != canonical_sources:
            errors.append(f"{code} source coverage differs from the canonical library")
        for record in documents:
            source_rel = record.get("source", "")
            localized_rel = record.get("localized", "")
            source_path = ROOT / source_rel
            localized_path = ROOT / localized_rel
            expected_localized.add(localized_rel)
            if not source_path.is_file() or not localized_path.is_file():
                errors.append(f"{code} missing mapped document: {source_rel} -> {localized_rel}")
                continue
            source_hash = hashlib.sha256(source_path.read_bytes()).hexdigest()
            localized_hash = hashlib.sha256(localized_path.read_bytes()).hexdigest()
            if record.get("source_sha256") != source_hash or record.get("localized_sha256") != localized_hash:
                errors.append(f"{code} stale manifest hash: {source_rel}")
            localized_text = localized_path.read_text(encoding="utf-8")
            if "ZXQ" in localized_text or "data-codex" in localized_text:
                errors.append(f"{code} internal translation marker remains: {localized_rel}")

    actual_localized = {
        path.relative_to(ROOT).as_posix()
        for path in root.rglob("*.md")
        if path.name != "LANGUAGES.md"
    }
    if actual_localized != expected_localized:
        errors.append("localized Markdown files differ from manifest coverage")
    relative_files = [path.relative_to(ROOT).as_posix() for path in root.rglob("*") if path.is_file()]
    if len(relative_files) != len({path.casefold() for path in relative_files}):
        errors.append("localized library contains a case-insensitive path collision")
    if any(len(path) > 220 for path in relative_files):
        errors.append("localized library contains an overlong relative path")

    mexican_path = ROOT / locales["es-MX"]["entry"]
    mexican = mexican_path.read_text(encoding="utf-8")
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
