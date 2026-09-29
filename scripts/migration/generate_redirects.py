#!/usr/bin/env python3
"""Generate static GitHub Pages redirects from the migration route manifest."""

from __future__ import annotations

import html
import json
from pathlib import Path
from urllib.parse import urlsplit

ROOT = Path(__file__).resolve().parents[2]
SITE = ROOT / "_site"
MANIFEST = ROOT / "scripts/migration/routes.json"


def redirect_file(path: str) -> Path:
    clean = path.lstrip("/")
    return SITE / clean / "index.html" if path.endswith("/") else SITE / f"{clean}.html"


def main() -> None:
    manifest = json.loads(MANIFEST.read_text(encoding="utf-8"))
    generated = 0
    for route in manifest["routes"]:
        if route["owner"] != "redirect" or route["from"] == route["to"]:
            continue
        target = route["to"]
        if urlsplit(target).scheme not in {"", "http", "https"}:
            raise ValueError(f"Unsupported redirect target: {target}")
        output = redirect_file(route["from"])
        output.parent.mkdir(parents=True, exist_ok=True)
        safe_target = html.escape(target, quote=True)
        output.write_text(
            "<!doctype html>\n"
            '<html lang="en"><head><meta charset="utf-8">'
            '<meta name="viewport" content="width=device-width,initial-scale=1">'
            f'<link rel="canonical" href="{safe_target}">'
            f'<meta http-equiv="refresh" content="0; url={safe_target}">'
            f"<title>Redirecting</title></head><body>"
            f'<p>This page moved. <a href="{safe_target}">Continue to the updated page</a>.</p>'
            "</body></html>\n",
            encoding="utf-8",
        )
        generated += 1
    print(f"Generated {generated} static redirects from {MANIFEST.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
