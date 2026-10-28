#!/usr/bin/env bash
# Practical 12: Check whether an integer is even or odd
set -u
read -rp "Enter an integer: " n
if [[ ! "$n" =~ ^-?[0-9]+$ ]]; then
  echo "Invalid input: please enter an integer." >&2
  exit 1
fi
if (( n % 2 == 0 )); then
  echo "$n is even."
else
  echo "$n is odd."
fi
