#!/usr/bin/env bash
# Practical 16: Copy contents of one file to another
set -u
read -rp "Source file: " src
read -rp "Destination file: " dst
if [[ ! -f "$src" ]]; then
  echo "Error: source is not a regular file." >&2
  exit 1
fi
if [[ "$src" -ef "$dst" ]]; then
  echo "Error: source and destination refer to the same file." >&2
  exit 1
fi
if [[ -e "$dst" ]]; then
  read -rp "Destination exists. Overwrite? (y/N): " confirm
  [[ "$confirm" == "y" || "$confirm" == "Y" ]] || { echo "Cancelled."; exit 0; }
fi
if cp -- "$src" "$dst"; then
  echo "Contents copied from '$src' to '$dst'."
else
  echo "Copy failed." >&2
  exit 1
fi
