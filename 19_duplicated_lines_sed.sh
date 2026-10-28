#!/usr/bin/env bash
# Practical 19: Print duplicated lines from input using sed
# Usage: ./19_duplicated_lines_sed.sh [file]
set -u
if (( $# > 1 )); then
  echo "Usage: $0 [file]" >&2
  exit 1
fi
if (( $# == 1 )); then
  input="$1"
  if [[ ! -f "$input" ]]; then
    echo "Error: file not found: $input" >&2
    exit 1
  fi
else
  input="/dev/stdin"
fi

# Keep the previous line in sed's hold space; print a line when it matches the previous line.
# This prints adjacent duplicate occurrences. Sort first if duplicates anywhere in the file should be grouped.
sed -n '1h; 1!{G; s/^\(.*\)\n\1$/&/; t duplicate; h; b; :duplicate; s/\n.*//; p; h;}' "$input"
