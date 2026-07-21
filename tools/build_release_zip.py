#!/usr/bin/env python3
"""Build or verify the two deterministic RandomDay release packages."""

from __future__ import annotations

import argparse
import hashlib
import io
from pathlib import Path, PurePosixPath
import re
import zipfile


ROOT = Path(__file__).resolve().parents[1]
MOD = ROOT / "RandomDay"
VERSION = (ROOT / "VERSION").read_text(encoding="utf-8").strip()
RELEASE_DIR = ROOT / "releases" / VERSION
ZIP_TIME = (1980, 1, 1, 0, 0, 0)
LEGAL = ("LICENSE", "NOTICE.md", "THIRD_PARTY_NOTICES.md")
MODES = {
    "DedicatedServer": "dedicated_server",
    "SingleplayerLAN": "singleplayer_manual",
}
PRIVATE_PATTERNS = {
    "webhook_url": re.compile(rb"https?://[^\s\"'<>]+/(?:api/)?webhooks?/", re.I),
    "private_key": re.compile(rb"-----BEGIN (?:OPENSSH |RSA |EC )?PRIVATE KEY-----"),
    "credential": re.compile(rb"(?:password|api[_-]?key|access[_-]?token|client[_-]?secret)\s*[:=]\s*[\"'][^\"']{8,}[\"']", re.I),
    "private_path": re.compile(rb"(?:[A-Z]:[/\\]Users[/\\][^/\\\r\n]+|/(?:home|root)/[^/\r\n]+)", re.I),
}


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def validate_name(name: str) -> None:
    path = PurePosixPath(name)
    if path.is_absolute() or ".." in path.parts or "\\" in name:
        raise SystemExit(f"unsafe package member: {name}")
    folded = {part.casefold() for part in path.parts}
    if folded & {"runtime", "__pycache__", ".git", ".tmp", "server_reports"}:
        raise SystemExit(f"generated/private path is not packageable: {name}")


def source_files() -> list[Path]:
    files = sorted(path for path in MOD.rglob("*") if path.is_file())
    required = {MOD / "enabled.txt", MOD / ".randomday_mode", MOD / ".randomday_version", MOD / "Scripts/main.lua"}
    if not required.issubset(files):
        raise SystemExit("RandomDay source is missing a required loader or package marker")
    return files


def members(mode: str) -> dict[str, bytes]:
    payload: dict[str, bytes] = {}
    for legal in LEGAL:
        payload[legal] = (ROOT / legal).read_bytes()
    for path in source_files():
        name = path.relative_to(ROOT).as_posix()
        data = path.read_bytes()
        if name == "RandomDay/.randomday_mode":
            data = (mode + "\n").encode("utf-8")
        elif name == "RandomDay/.randomday_version":
            data = (VERSION + "\n").encode("utf-8")
        payload[name] = data
    folded: dict[str, str] = {}
    for name, data in payload.items():
        validate_name(name)
        prior = folded.setdefault(name.casefold(), name)
        if prior != name:
            raise SystemExit(f"case-colliding package members: {prior}, {name}")
        for label, pattern in PRIVATE_PATTERNS.items():
            if pattern.search(data):
                raise SystemExit(f"private material in {name}: {label}")
    if "RandomDay/Scripts/main.lua" not in payload or "RandomDay/scripts/main.lua" in payload:
        raise SystemExit("canonical RandomDay loader path is invalid")
    return payload


def zip_bytes(payload: dict[str, bytes]) -> bytes:
    output = io.BytesIO()
    with zipfile.ZipFile(output, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
        for name in sorted(payload):
            info = zipfile.ZipInfo(name, ZIP_TIME)
            info.create_system = 3
            info.external_attr = 0o100644 << 16
            info.compress_type = zipfile.ZIP_DEFLATED
            archive.writestr(info, payload[name], compress_type=zipfile.ZIP_DEFLATED, compresslevel=9)
    return output.getvalue()


def expected_assets() -> dict[str, bytes]:
    assets = {}
    for suffix, mode in MODES.items():
        assets[f"RandomDay_{VERSION}_{suffix}.zip"] = zip_bytes(members(mode))
    return assets


def checksum_text(assets: dict[str, bytes]) -> str:
    return "".join(f"{sha256(data)}  {name}\n" for name, data in sorted(assets.items()))


def verify_archive(name: str, data: bytes, mode: str) -> None:
    with zipfile.ZipFile(io.BytesIO(data), "r") as archive:
        names = archive.namelist()
        if names != sorted(names) or len(names) != len(set(item.casefold() for item in names)):
            raise SystemExit(f"non-deterministic or case-colliding archive: {name}")
        if archive.read("RandomDay/.randomday_mode").decode().strip() != mode:
            raise SystemExit(f"package mode mismatch: {name}")
        if archive.read("RandomDay/.randomday_version").decode().strip() != VERSION:
            raise SystemExit(f"package version mismatch: {name}")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    if (MOD / ".randomday_version").read_text(encoding="utf-8").strip() != VERSION:
        raise SystemExit("RandomDay version markers do not match")
    assets = expected_assets()
    for suffix, mode in MODES.items():
        verify_archive(f"RandomDay_{VERSION}_{suffix}.zip", assets[f"RandomDay_{VERSION}_{suffix}.zip"], mode)
    checksums = checksum_text(assets).encode("utf-8")
    if args.check:
        actual_dirs = sorted(path.name for path in (ROOT / "releases").iterdir() if path.is_dir())
        if actual_dirs != [VERSION]:
            raise SystemExit(f"release directory set is not current-only: {actual_dirs}")
        for name, data in assets.items():
            if not (RELEASE_DIR / name).is_file() or (RELEASE_DIR / name).read_bytes() != data:
                raise SystemExit(f"release asset differs from deterministic build: {name}")
        if (RELEASE_DIR / "CHECKSUMS.sha256").read_bytes() != checksums:
            raise SystemExit("CHECKSUMS.sha256 differs from release assets")
        print(f"RandomDay {VERSION} release check passed")
        return 0
    RELEASE_DIR.mkdir(parents=True, exist_ok=True)
    for path in RELEASE_DIR.iterdir():
        if path.is_file() and path.name not in {"RELEASE_NOTES.md"}:
            path.unlink()
    for name, data in assets.items():
        (RELEASE_DIR / name).write_bytes(data)
    (RELEASE_DIR / "CHECKSUMS.sha256").write_bytes(checksums)
    print(RELEASE_DIR)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
