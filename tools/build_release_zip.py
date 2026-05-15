#!/usr/bin/env python3
from pathlib import Path
import zipfile

ROOT = Path(__file__).resolve().parents[1]
version = "v0.3.15-alpha"
source = ROOT / "RandomDay"
out_dir = ROOT / "releases" / version
out_dir.mkdir(parents=True, exist_ok=True)
out = out_dir / f"RandomDay_{version}.zip"

with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    for path in source.rglob("*"):
        if path.is_file():
            normalized = path.as_posix()
            if "/runtime/" in normalized or "/web_export/" in normalized:
                continue
            z.write(path, path.relative_to(ROOT).as_posix())

print(out)
