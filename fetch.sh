#!/usr/bin/env bash
# Build-time asset fetch for the sail-media static site.
# Downloads each file listed in urls.tsv into trucking-guides/ so Render
# serves them from its own disk. Canonical home is the firm WP media
# library; re-host there when the images are seated on live pages.
set -euo pipefail
mkdir -p trucking-guides
while IFS=$'\t' read -r name url; do
  [ -z "${name:-}" ] && continue
  curl -fsSL -m 180 "$url" -o "trucking-guides/$name"
  echo "fetched $name $(stat -c%s "trucking-guides/$name") bytes"
done < urls.tsv
