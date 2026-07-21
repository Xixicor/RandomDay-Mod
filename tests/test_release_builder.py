import importlib.util
from pathlib import Path
import tempfile
import unittest
import zipfile

ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location("release_builder", ROOT / "tools/build_release_zip.py")
BUILDER = importlib.util.module_from_spec(SPEC); SPEC.loader.exec_module(BUILDER)

class ReleaseBuilderTests(unittest.TestCase):
    def test_two_complete_package_modes_are_deterministic(self):
        assets = BUILDER.expected_assets()
        self.assertEqual({
            f"RandomDay_{BUILDER.VERSION}_DedicatedServer.zip",
            f"RandomDay_{BUILDER.VERSION}_SingleplayerLAN.zip",
        }, set(assets))
        self.assertEqual(assets, BUILDER.expected_assets())
        expected = {"DedicatedServer": "dedicated_server", "SingleplayerLAN": "singleplayer_manual"}
        for suffix, mode in expected.items():
            with zipfile.ZipFile(__import__("io").BytesIO(assets[f"RandomDay_{BUILDER.VERSION}_{suffix}.zip"])) as archive:
                names = archive.namelist()
                self.assertIn("RandomDay/Scripts/main.lua", names)
                self.assertNotIn("RandomDay/scripts/main.lua", names)
                self.assertEqual(mode, archive.read("RandomDay/.randomday_mode").decode().strip())

    def test_only_current_release_and_mexican_label(self):
        self.assertEqual([BUILDER.VERSION], sorted(path.name for path in (ROOT / "releases").iterdir() if path.is_dir()))
        self.assertIn("Mexican (MX)", (ROOT / "docs/locales/README.md").read_text(encoding="utf-8"))
        self.assertIn("Mexican (MX)", (ROOT / "docs/locales/es-MX/README.md").read_text(encoding="utf-8"))

if __name__ == "__main__": unittest.main()
