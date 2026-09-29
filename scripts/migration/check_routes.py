#!/usr/bin/env python3
"""Assert migrated canonical routes and redirects exist in the composed site."""

from __future__ import annotations

import json
import sys
from pathlib import Path
from urllib.parse import urlsplit

ROOT = Path(__file__).resolve().parents[2]
SITE = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else ROOT / "_site"
MANIFEST = ROOT / "scripts/migration/routes.json"


def output_for(url: str) -> Path:
    path = urlsplit(url).path
    clean = path.lstrip("/")
    if not clean or path.endswith("/"):
        return SITE / clean / "index.html"
    return SITE / f"{clean}.html"


def main() -> int:
    routes = json.loads(MANIFEST.read_text(encoding="utf-8"))["routes"]
    failures: list[str] = []
    for route in routes:
        source = output_for(route["from"])
        if not source.is_file():
            failures.append(f"missing source route: {route['from']} -> {source}")
            continue
        if route["owner"] in {"jekyll", "quartz"} or not urlsplit(route["to"]).scheme:
            destination = output_for(route["to"])
            if not destination.is_file():
                failures.append(f"missing destination: {route['to']} -> {destination}")
    for path in [
        "index.html",
        "about/index.html",
        "about/academic-record/index.html",
        "cv/index.html",
        "research/index.html",
        "publications/index.html",
        "events/index.html",
        "projects/index.html",
        "journey/index.html",
        "now/index.html",
        "notes/index.html",
        "notes/quantum/index.html",
        "events/hard-probes-2026/index.html",
        "publications/upsilon-oo-lhc-2026/index.html",
    ]:
        if not (SITE / path).is_file():
            failures.append(f"missing required route: /{path}")
    notes_index = SITE / "notes/static/contentIndex.json"
    shared_index = SITE / "static/contentIndex.json"
    if not notes_index.is_file() or not shared_index.is_file():
        failures.append("missing Quartz content index for root-relative Graph/Explorer requests")
    elif notes_index.read_bytes() != shared_index.read_bytes():
        failures.append("root and /notes/ Quartz content indexes differ")
    if failures:
        print("Route validation failed:")
        print("\n".join(f"- {failure}" for failure in failures))
        return 1
    print(f"Validated {len(routes)} manifest entries and required routes in {SITE}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
