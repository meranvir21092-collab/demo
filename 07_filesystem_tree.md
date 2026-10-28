# Practical 7: Unix/Linux File System Tree

## Aim
To study the hierarchical Linux file system.

```text
/
├── bin       essential user commands (may link into /usr/bin)
├── boot      bootloader and kernel-related files
├── dev       device nodes
├── etc       system configuration
├── home      users' home directories
├── lib       essential libraries (layout varies by distribution)
├── media     removable-media mount points
├── mnt       temporary mount points
├── opt       optional/add-on software
├── proc      virtual process/kernel information
├── root      root user's home directory
├── run       runtime state
├── sbin      essential administration commands (may link into /usr/sbin)
├── tmp       temporary files
├── usr       applications, libraries, documentation
└── var       logs and changing data
```

## Useful commands
```bash
pwd
ls /
find "$HOME" -maxdepth 2 -type d
tree -L 2 /  # if tree is installed; permission warnings are normal
```

## Result
The Linux directory hierarchy was studied.
