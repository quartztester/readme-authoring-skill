#!/usr/bin/env bash
# Extract every http(s) URL from a markdown file (skipping fenced code blocks,
# whose URLs are examples, not links) and report each one's HTTP status.
# Usage: scripts/link_check.sh FILE [FILE...]
# 200 = fine. 404 = dead, relink or drop. 403 on bot-blocking hosts
# (ko-fi, reddit) = verify via search before dropping, per SKILL.md.
set -u
for f in "$@"; do
  echo "== $f"
  awk '/^```/ {inblock = !inblock; next} !inblock' "$f" \
    | grep -hoE 'https?://[^ )"<>]+' \
    | sed -e 's/#.*//' -e 's/[.,;]$//' | sort -u \
    | while read -r u; do
        c=$(curl -sL -A 'Mozilla/5.0' -o /dev/null -w '%{http_code}' --max-time 20 "$u")
        printf '%s  %s\n' "$c" "$u"
      done
done
