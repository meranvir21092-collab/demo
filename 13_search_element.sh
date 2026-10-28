#!/usr/bin/env bash
# Practical 13: Search for an element in a list.
# Usage: ./13_search_element.sh TARGET ITEM1 ITEM2 ...
set -u
if (( $# < 2 )); then
  echo "Usage: $0 TARGET ITEM1 ITEM2 ..." >&2
  echo "Example: $0 7 2 4 7 9" >&2
  exit 1
fi
target="$1"
shift
found=0
for item in "$@"; do
  if [[ "$item" == "$target" ]]; then
    found=1
    break
  fi
done
if (( found )); then
  echo "Element '$target' is present in the list."
else
  echo "Element '$target' is not present in the list."
fi
