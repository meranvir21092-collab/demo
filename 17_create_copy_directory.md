# Practical 17: Create a Directory, Write Content, and Copy It to Home

## Aim
Create a directory, write a file in it, and copy the directory into the home directory.

## Commands
```bash
mkdir -p /tmp/linux_lab/source
echo "This is my Linux practical file." > /tmp/linux_lab/source/notes.txt
mkdir -p "$HOME/LinuxPractical"
cp -r /tmp/linux_lab/source "$HOME/LinuxPractical/"
cat "$HOME/LinuxPractical/source/notes.txt"
```

## Result
A directory and text file were created and copied to a suitable location in the home directory.
