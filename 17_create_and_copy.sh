#!/usr/bin/env bash
# Practical 17: Create directory/file and copy into home directory
set -euo pipefail
source_dir="/tmp/linux_lab/source"
destination="$HOME/LinuxPractical"
mkdir -p "$source_dir" "$destination"
printf '%s\n' "This is my Linux practical file." > "$source_dir/notes.txt"
cp -r "$source_dir" "$destination/"
echo "Created $source_dir/notes.txt and copied directory to $destination/source/"
cat "$destination/source/notes.txt"
