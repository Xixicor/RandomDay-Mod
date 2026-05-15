#!/usr/bin/env python3
from pathlib import Path
import sys
import zipfile
import subprocess

ROOT = Path(__file__).resolve().parents[1]
version = "v0.3.15-alpha"
errors = []

def git_ls_files():
    try:
        out = subprocess.check_output(
            ["git", "ls-files"],
            cwd=ROOT,
            text=True,
            stderr=subprocess.DEVNULL,
        )
        return set(line.strip().replace("\\", "/") for line in out.splitlines() if line.strip())
    except Exception:
        return set()

def exists_exact(root: Path, rel: str) -> bool:
    cur = root
    for part in rel.replace("\\", "/").split("/"):
        if not cur.exists() or not cur.is_dir():
            return False
        matches = [p for p in cur.iterdir() if p.name == part]
        if not matches:
            return False
        cur = matches[0]
    return cur.exists()

tracked = git_ls_files()

required = [
    ROOT / "VERSION",
    ROOT / "README.md",
    ROOT / "RandomDay" / "enabled.txt",
    ROOT / "RandomDay" / "Scripts" / "main.lua",
    ROOT / "RandomDay" / "Scripts" / "ax_config" / "server.lua",
    ROOT / "docs" / "NEXUS_DESCRIPTION.bbcode",
    ROOT / "releases" / version / f"RandomDay_{version}.zip",
]

for path in required:
    if not path.exists():
        errors.append(f"Missing required path: {path.relative_to(ROOT)}")

forbidden_index_paths = [
    "RandomDay/scripts/main.lua",
    "RandomDay/Scripts/ax_external/adapters/damage_numbers.lua",
]

for rel in forbidden_index_paths:
    if rel in tracked:
        errors.append(f"Forbidden tracked path exists: {rel}")
    elif exists_exact(ROOT, rel):
        errors.append(f"Forbidden exact-case path exists: {rel}")

family_dir = ROOT / "RandomDay" / "Scripts" / "ax_profiles" / "families"
if family_dir.exists():
    family_files = sorted(family_dir.glob("*_17.lua"))
    if len(family_files) != 17:
        errors.append(f"Expected 17 family files, found {len(family_files)}")
else:
    errors.append("Missing family directory")

zip_path = ROOT / "releases" / version / f"RandomDay_{version}.zip"
forbidden_roots = (
    "DynamicSpawns/",
    "LethalLasers/",
    "AnteUp/",
    "CheatConsoleCommands/",
    "ConsoleCommandsMod/",
    "ConsoleEnablerMod/",
    "CheatManagerEnablerMod/",
    "BPML_GenericFunctions/",
    "BPModLoaderMod/",
    "Keybinds/",
    "shared/",
)

if zip_path.exists():
    with zipfile.ZipFile(zip_path, "r") as z:
        names = z.namelist()
        if "RandomDay/Scripts/main.lua" not in names:
            errors.append("Release ZIP missing RandomDay/Scripts/main.lua")
        if "RandomDay/scripts/main.lua" in names:
            errors.append("Release ZIP contains duplicate lowercase RandomDay/scripts/main.lua")
        for name in names:
            if any(name.startswith(root) for root in forbidden_roots):
                errors.append(f"Release ZIP contains forbidden bundled dependency path: {name}")
                break

forbidden_terms = [
    "Damage" + " Number",
    "Damage" + "Number",
    "damage" + "_numbers",
    "Mirror" + "World",
    "protected" + " worlds",
    "Ax" + "tlan" + " RandomDay",
    "AX" + "TLAN",
    "ax" + "tlan" + "_day",
]

skip_files = {
    "tools/validate_repo.py",
}

for path in ROOT.rglob("*"):
    rel = path.relative_to(ROOT).as_posix()
    if rel in skip_files:
        continue
    if path.is_file() and path.suffix.lower() in (".md", ".txt", ".bbcode", ".lua", ".py", ".html", ".yml", ".yaml"):
        text = path.read_text(encoding="utf-8", errors="ignore")
        for term in forbidden_terms:
            if term in text:
                errors.append(f"Forbidden term {term!r} found in {rel}")

if errors:
    print("VALIDATION FAILED")
    for err in errors:
        print("-", err)
    sys.exit(1)

print("VALIDATION PASSED")