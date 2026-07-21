#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys


ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "RandomDay"
DOC_ROOT = ROOT / "docs" / "profiles"
FAMILY_ROOT = DOC_ROOT / "families"
TMP_ROOT = ROOT / ".tmp" / "randomday_profile_docs"


def read_version() -> str:
    version = (ROOT / "VERSION").read_text(encoding="utf-8").strip()
    if not version:
        raise RuntimeError("VERSION must not be empty")
    return version


def lua_executable() -> str | None:
    configured = os.environ.get("RANDOMDAY_LUA", "").strip()
    if configured:
        resolved = shutil.which(configured)
        if resolved:
            return resolved
        path = Path(configured)
        if path.is_file():
            return str(path)
        raise RuntimeError(f"RANDOMDAY_LUA does not identify an executable file: {configured}")
    return shutil.which("lua")


def run_lupa_export(script: Path, output: Path, version: str) -> None:
    try:
        from lupa.lua54 import LuaRuntime
    except ImportError:
        local_dependencies = ROOT / ".tmp" / "test-deps"
        if local_dependencies.is_dir():
            sys.path.insert(0, str(local_dependencies))
        try:
            from lupa.lua54 import LuaRuntime
        except ImportError as exc:
            raise RuntimeError(
                "Profile generation requires a Lua executable or the pinned Lupa test dependency"
            ) from exc
    runtime = LuaRuntime(unpack_returned_tuples=True)
    runtime.globals().arg = runtime.table_from(
        [SOURCE.resolve().as_posix(), output.resolve().as_posix(), version]
    )
    runtime.execute(f"return dofile({json.dumps(script.resolve().as_posix())})")


def export_profiles() -> dict:
    TMP_ROOT.mkdir(parents=True, exist_ok=True)
    output = TMP_ROOT / "profiles.generated.raw.json"
    script = ROOT / "tools" / "export_profiles.lua"
    version = read_version()
    executable = lua_executable()
    if executable:
        env = os.environ.copy()
        env["TEMP"] = str(ROOT / ".tmp")
        env["TMP"] = env["TEMP"]
        subprocess.run(
            [executable, str(script), str(SOURCE), str(output), version],
            cwd=ROOT,
            env=env,
            check=True,
        )
    else:
        run_lupa_export(script, output, version)
    data = json.loads(output.read_text(encoding="utf-8"))
    validate_export(data)
    return data


def validate_export(data: dict) -> None:
    if data.get("schema") != "randomday_profile_reference_v2":
        raise RuntimeError("Unexpected generated profile schema")
    if data.get("family_count") != 17 or data.get("profile_count") != 289:
        raise RuntimeError("Generated profile counts must remain 17 families and 289 profiles")
    dictionary = data.get("dictionary") or {}
    settings = dictionary.get("settings") or {}
    contract = data.get("translation_contract") or {}
    if len(settings) != 46:
        raise RuntimeError("Generated dictionary must contain all 46 SandboxSettings entries")
    if contract.get("dictionary_version") != dictionary.get("version"):
        raise RuntimeError("Generated translation contract does not match the dictionary version")
    if contract.get("setting_count") != len(settings) or contract.get("profile_translation_embedded") is not True:
        raise RuntimeError("Generated translation contract is incomplete")
    translated = [
        profile.get("translation")
        for family in data.get("families", [])
        for profile in family.get("profiles", [])
    ]
    if len(translated) != 289 or any(
        not row or len(row.get("setting_meanings", [])) != 46 for row in translated
    ):
        raise RuntimeError("Every generated profile must embed complete translation data")


def md_value(value) -> str:
    if isinstance(value, bool):
        return "true" if value else "false"
    return str(value)


def profile_section(profile: dict) -> list[str]:
    translated = profile["translation"]
    lines = [
        f"## Day {profile['day']} - {profile['display_name']}",
        "",
        f"**Profile ID:** `{profile['id']}`",
        f"**Overall conditions:** {translated['overall']['label']} ({translated['overall']['score']}/5)",
        f"**Plain meaning:** {translated['summary']}",
        f"**Player advice:** {translated['advice']}",
        "",
        "### Main effects",
        "",
    ]
    for fact in translated["top_facts"]:
        lines.append(f"- {fact}")
    lines.extend(["", "### Domain ratings", "", "| Area | Rating | Meaning |", "|---|---|---|"])
    domains = translated["domains"]
    for domain_id in ["combat", "survival", "resources", "environment", "recovery"]:
        row = domains[domain_id]
        lines.append(f"| {row['label']} | {row['band']} ({row['score']}/5) | {row['summary']} |")
    lines.extend([
        "",
        "### Encounter context",
        "",
        f"- Tier: **{translated['encounter']['tier_label']}**",
        f"- Theme: **{translated['encounter']['theme_label']}**",
        f"- Maximum active groups: **{translated['encounter']['max_active_groups']}**",
        f"- Mixed encounter chance: **{translated['encounter']['mixed_encounter_chance']}**",
        f"- Special event chance: **{translated['encounter']['special_event_chance']}**",
        "",
        "### Exact sandbox settings",
        "",
        "| Setting | Raw value | Translated meaning |",
        "|---|---:|---|",
    ])
    meanings = {row["key"]: row for row in translated["setting_meanings"]}
    for key in sorted(profile["settings"]):
        row = meanings[key]
        lines.append(f"| {key} | {md_value(profile['settings'][key])} | {row['explanation']} |")
    lines.extend(["", "### Optional adapter selection", ""])
    external = profile.get("external_profiles") or {}
    if external:
        for key in sorted(external):
            lines.append(f"- `{key}`: `{md_value(external[key])}`")
    else:
        lines.append("- No optional adapter profile is selected.")
    lines.append("")
    return lines


def family_document(family: dict, version: str) -> str:
    lines = [
        f"# RandomDay - {family['public_name']} Family",
        "",
        f"Version: `{version}`",
        "",
        family["description"],
        "",
        f"**Play style:** {family['genre']}",
        f"**Message tone:** {family['humor_style']}",
        "",
        "## 17-Day Index",
        "",
        "| Day | Profile | Conditions | Main pressure |",
        "|---:|---|---|---|",
    ]
    for profile in family["profiles"]:
        translated = profile["translation"]
        lines.append(
            f"| {profile['day']} | {profile['display_name']} | "
            f"{translated['overall']['label']} ({translated['overall']['score']}/5) | "
            f"{translated['domains'][translated['primary_domain']]['label']} |"
        )
    lines.append("")
    for profile in family["profiles"]:
        lines.extend(profile_section(profile))
    return "\n".join(lines).rstrip() + "\n"


def full_reference(data: dict) -> str:
    lines = [
        "# RandomDay - Full profile reference",
        "",
        f"Version: `{data['version']}`",
        "",
        f"This generated reference covers all {data['profile_count']} profiles in "
        f"{data['family_count']} families. It is generated from the same Lua profile "
        "tables and translation dictionary used at runtime; raw values remain authoritative.",
        "",
        "## Read the reference",
        "",
        "- Overall and domain ratings are calculated from all 46 SandboxSettings keys plus encounter pressure.",
        "- Plain-language text is advisory. Exact values are retained beside every explanation.",
        "- Active settings apply to the current boot. Prepared settings apply only after the next restart.",
        "- Optional adapter selections are requests; runtime status records whether an installed adapter actually matched and verified.",
        "",
        "## Families",
        "",
    ]
    for family in data["families"]:
        lines.append(f"- [{family['public_name']}](families/{family['id']}.md): {family['description']}")
    lines.extend(["", "## Profile index", "", "| Family | Day | Profile | Conditions |", "|---|---:|---|---|"])
    for family in data["families"]:
        for profile in family["profiles"]:
            overall = profile["translation"]["overall"]
            lines.append(f"| {family['public_name']} | {profile['day']} | {profile['display_name']} | {overall['label']} ({overall['score']}/5) |")
    lines.append("")
    return "\n".join(lines)


def setting_reference(data: dict) -> str:
    dictionary = data["dictionary"]
    lines = [
        "# RandomDay - SandboxSettings dictionary",
        "",
        f"Version: `{data['version']}`",
        "",
        "This is the complete runtime dictionary for the 46 SandboxSettings keys used by every RandomDay profile.",
        "The dictionary converts raw values into domain scores and bounded player/admin wording; it never replaces the raw value.",
        "",
        "| Key | Player meaning | Domain | Type | Baseline | Harder when |",
        "|---|---|---|---|---:|---|",
    ]
    for key in sorted(dictionary["settings"]):
        row = dictionary["settings"][key]
        lines.append(
            f"| {key} | {row['label']} | {row['domain']} | {row['kind']} | "
            f"{md_value(row.get('baseline', 'n/a'))} | {row.get('harder_when', 'context')} |"
        )
    lines.extend(["", "## Score bands", "", "| Score through | Rating | Plain meaning |", "|---:|---|---|"])
    for row in dictionary["score_bands"]:
        lines.append(f"| {row['maximum']} | {row['label']} | {row['id']} |")
    lines.append("")
    return "\n".join(lines)


def readme(data: dict) -> str:
    return "\n".join([
        "# RandomDay profile documentation",
        "",
        f"Version: `{data['version']}`",
        "",
        f"- Families: **{data['family_count']}**",
        f"- Profiles: **{data['profile_count']}**",
        f"- SandboxSettings dictionary entries: **{len(data['dictionary']['settings'])}**",
        "",
        "Choose a family by gameplay intent in the [profile choice guide](../CHOOSE_A_PROFILE.md), then use this generated index for exact values.",
        "",
        "These files are generated from the runtime Lua source and its dictionary/translation "
        "contract. They show the shipped `sandbox.profile_overrides` defaults; one server's "
        "configured values may differ:",
        "",
        "- `profiles.generated.json`: machine-readable profiles, raw values, dictionary, and translations.",
        "- `FULL_PROFILE_REFERENCE.md`: complete index and interpretation rules.",
        "- `SANDBOX_SETTINGS_KEYS.md`: complete 46-key dictionary.",
        "- `families/*.md`: detailed 17-day family references.",
        "",
        "Regenerate with: `python -B tools/generate_profile_docs.py`",
        "Check for drift with: `python -B tools/generate_profile_docs.py --check`",
        "",
    ])


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true", help="fail when generated files differ")
    args = parser.parse_args()
    data = export_profiles()

    outputs: dict[Path, str] = {
        DOC_ROOT / "profiles.generated.json": json.dumps(data, indent=2, ensure_ascii=True) + "\n",
        DOC_ROOT / "FULL_PROFILE_REFERENCE.md": full_reference(data),
        DOC_ROOT / "SANDBOX_SETTINGS_KEYS.md": setting_reference(data),
        DOC_ROOT / "README.md": readme(data),
    }
    for family in data["families"]:
        outputs[FAMILY_ROOT / f"{family['id']}.md"] = family_document(family, data["version"])

    changed = []
    for path, content in outputs.items():
        current = path.read_text(encoding="utf-8") if path.exists() else None
        if current != content:
            changed.append(path.relative_to(ROOT).as_posix())
            if not args.check:
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(content, encoding="utf-8", newline="\n")

    if args.check and changed:
        print("GENERATED DOCUMENTATION IS STALE")
        for path in changed:
            print("-", path)
        return 1
    print(f"profile_docs_ok files={len(outputs)} profiles={data['profile_count']}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
