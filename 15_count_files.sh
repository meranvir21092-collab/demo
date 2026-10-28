#!/usr/bin/env bash
# Practical 15: Count regular files directly inside a directory (not recursively)
set -u
read -rp "Enter directory path: " dir
if [[ ! -d "$dir" ]]; then
  echo "Error: '$dir' is not a directory." >&2
  exit 1
fi
count=$(find "$dir" -maxdepth 1 -type f -printf '.' | wc -c)
echo "Number of regular files directly inside '$dir': $count"
