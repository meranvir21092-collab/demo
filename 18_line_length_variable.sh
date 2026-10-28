#!/usr/bin/env bash
# Practical 18: Use a pipeline and command substitution to store line length in a variable
set -u
read -rp "Enter file path: " file
read -rp "Enter line number (starting at 1): " line_no
if [[ ! -f "$file" ]]; then
  echo "Error: file not found." >&2
  exit 1
fi
if [[ ! "$line_no" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: line number must be a positive integer." >&2
  exit 1
fi
line_length=$(sed -n "${line_no}p" "$file" | wc -m)
# wc -m includes the newline if present; subtract one when the selected line exists and ends with newline.
line=$(sed -n "${line_no}p" "$file")
if [[ -z "$line" ]]; then
  echo "Line is empty or does not exist; measured character count: $line_length"
else
  line_length=$(printf '%s' "$line" | wc -m)
  echo "Length of line $line_no: $line_length characters (excluding newline)"
fi
