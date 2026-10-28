#!/usr/bin/env bash
# Practical 14: Check whether the supplied path is a directory
set -u
read -rp "Enter a path: " path
if [[ -d "$path" ]]; then
  echo "'$path' is a directory."
elif [[ -e "$path" ]]; then
  echo "'$path' exists, but it is not a directory."
else
  echo "'$path' does not exist."
fi
