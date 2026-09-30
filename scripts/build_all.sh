#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

bundle exec jekyll build --destination _site

(
  cd quartz
  npx quartz plugin restore
  npx quartz build --output ../_site/notes
)

mkdir -p _site/static
cp _site/notes/static/contentIndex.json _site/static/contentIndex.json

python3 scripts/migration/generate_redirects.py
python3 scripts/migration/check_routes.py _site