from __future__ import annotations

from pathlib import Path
import re
import unittest


ROOT = Path(__file__).resolve().parents[1]
LOCALES = {
    "ar", "binary", "bn", "bo", "de", "el", "es-MX", "fa", "fr", "hi",
    "hu", "hy", "id", "ja", "ka", "ko", "la", "mn", "pt-BR", "ru",
    "sw", "ta", "th", "tr", "ur", "vi", "zh-CN",
}
LINK_RE = re.compile(r"(?<!!)\[[^\]]+\]\(([^)]+)\)")


class DocumentationNavigationTests(unittest.TestCase):
    def test_language_library_uses_the_approved_anchor_set(self) -> None:
        locale_root = ROOT / "docs/locales"
        self.assertEqual(LOCALES, {path.name for path in locale_root.iterdir() if path.is_dir()})
        index = (locale_root / "README.md").read_text(encoding="utf-8")
        mexican = (locale_root / "es-MX/README.md").read_text(encoding="utf-8")
        self.assertIn("Mexican (MX)", index)
        self.assertIn("# RandomDay - Mexican (MX)", mexican)
        for rejected in ("Mexican Spanish", "Spanish (Mexico)", "Español de México"):
            self.assertNotIn(rejected, index + mexican)
        for peninsular in ("ordenador", "fichero", "ficheros", "vosotros"):
            self.assertNotRegex(mexican.casefold(), rf"\b{peninsular}\b")
        for code in LOCALES:
            self.assertTrue((locale_root / code / "README.md").is_file(), code)
            self.assertIn(f"({code}/README.md)", index)

    def test_binary_page_starts_and_continues_in_binary(self) -> None:
        text = (ROOT / "docs/locales/binary/README.md").read_text(encoding="utf-8")
        self.assertGreaterEqual(len(text.splitlines()), 35)
        self.assertIn("01010010 01100001 01101110 01100100 01101111 01101101 01000100 01100001 01111001", text)
        for prose in ("This technical rendering", "Open ", "Use ", "Compare ", "The shipped builder"):
            self.assertNotIn(prose, text)

    def test_landing_page_explains_the_product_before_settings(self) -> None:
        text = (ROOT / "README.md").read_text(encoding="utf-8")
        for phrase in (
            "There are exactly two packages",
            "not a third download",
            "**World:**",
            "**Profile:** one complete set of sandbox rules",
            "**Family:**",
            "**Day:** one numbered profile",
            "**Active profile:**",
            "**Prepared profile:**",
        ):
            self.assertIn(phrase, text)
        self.assertIn("## Choose one of two downloads", text)
        self.assertIn("## What happens on the first start", text)

    def test_documentation_home_links_every_canonical_page(self) -> None:
        home = (ROOT / "docs/README.md").read_text(encoding="utf-8")
        self.assertIn("## New to RandomDay", home)
        for page in sorted((ROOT / "docs").glob("*.md")):
            if page.name != "README.md":
                self.assertIn(f"({page.name})", home, page.name)

    def test_all_local_markdown_links_resolve(self) -> None:
        for source in ROOT.rglob("*.md"):
            if any(part in {".git", ".tmp"} for part in source.parts):
                continue
            for target in LINK_RE.findall(source.read_text(encoding="utf-8")):
                path_text = target.split("#", 1)[0].replace("%20", " ")
                if not path_text or path_text.startswith(("http://", "https://", "mailto:")):
                    continue
                self.assertTrue((source.parent / path_text).resolve().exists(), f"{source.relative_to(ROOT)} -> {target}")

    def test_reader_pages_do_not_expose_release_process_notes(self) -> None:
        forbidden = (
            "prepared public candidate", "owner approval", "publication packet",
            "preservation ledger", "storefront draft", "private webhook",
        )
        for path in (ROOT / "README.md", ROOT / "INSTALL.md", ROOT / "CHANGELOG.md", ROOT / "docs/README.md"):
            text = path.read_text(encoding="utf-8").casefold()
            for phrase in forbidden:
                self.assertNotIn(phrase, text, path.name)

    def test_beginner_guides_do_not_require_maintainer_tools(self) -> None:
        for path in (ROOT / "README.md", ROOT / "INSTALL.md", ROOT / "docs/START_HERE.md", ROOT / "docs/CHOOSE_A_PROFILE.md"):
            text = path.read_text(encoding="utf-8")
            for detail in ("Get-FileHash", "CHECKSUMS.sha256", "git diff", "unittest discover"):
                self.assertNotIn(detail, text, path.name)
        validation = (ROOT / "docs/RELEASE_VALIDATION.md").read_text(encoding="utf-8")
        for heading in ("## Ordinary user proof", "## Contributor checks", "## Release checks", "## Avoid validation environment pitfalls", "## Known limits"):
            self.assertIn(heading, validation)

    def test_profile_defaults_are_documented_as_editable_defaults(self) -> None:
        text = (ROOT / "docs/CONFIGURATION.md").read_text(encoding="utf-8")
        self.assertIn("### Customize the shipped profile defaults", text)
        for key in ("HardcoreMode", "AllowIronMode", "StructuralSupportLimit", "BridgeSupports"):
            self.assertIn(key, text)

    def test_profile_overrides_and_optional_mod_contract_reaches_every_locale(self) -> None:
        server_config = (ROOT / "RandomDay/Scripts/ax_config/server.lua").read_text(encoding="utf-8")
        self.assertIn("profile_overrides = {", server_config)
        for key in ("HardcoreMode", "AllowIronMode", "StructuralSupportLimit", "BridgeSupports"):
            self.assertIn(key, server_config)
        for code in LOCALES:
            text = (ROOT / "docs/locales" / code / "README.md").read_text(encoding="utf-8")
            self.assertIn("profile_overrides", text, code)
            for mod_id in ("mods/156", "mods/141", "mods/201"):
                self.assertIn(mod_id, text, f"{code}: {mod_id}")

    def test_public_reader_copy_does_not_invent_a_separate_encounter_mod(self) -> None:
        for path in (ROOT / "README.md", ROOT / "docs/CONFIGURATION.md", ROOT / "docs/SUPPORTED_ADAPTERS.md"):
            self.assertNotIn("RandomDay Encounter Director", path.read_text(encoding="utf-8"), path.name)

    def test_only_the_current_release_line_is_present(self) -> None:
        version = (ROOT / "VERSION").read_text(encoding="utf-8").strip()
        self.assertEqual([version], sorted(path.name for path in (ROOT / "releases").iterdir() if path.is_dir()))
        for removed in ("README.es.md", "UPDATE_REPORT.md", "docs/publication", "website"):
            self.assertFalse((ROOT / removed).exists(), removed)


if __name__ == "__main__":
    unittest.main()
