# Unix/Linux Lab Practicals

This folder contains solutions and notes for all 20 listed Unix/Linux lab practicals.

## Requirements
- A Linux distribution (Ubuntu/Debian recommended) or a Linux VM.
- Bash and common utilities (`coreutils`, `procps`, `sed`, `util-linux`).
- Docker is optional and needed only for Practical 5.
- Practical 20 is a learning example of a kernel module; building/loading it requires matching Linux kernel headers and administrator privileges.

## Run shell scripts
From this directory:
```bash
chmod +x scripts/*.sh
./scripts/09_logged_in_users.sh
./scripts/10_hello_world.sh
./scripts/11_scientific_calculator.sh
```
For scripts that accept input, follow the prompts. For a script with a list argument:
```bash
./scripts/13_search_element.sh 7 2 4 7 9
```

## Safety notes
- `rm`, `shutdown`, `kill`, `chown`, Docker commands, and kernel-module commands can affect your system. Test in a VM and read commands before running.
- Practical 5's Docker installation steps vary by distribution and release; use the official Docker Engine installation guide for your exact OS.
- Do not load an untrusted kernel module on a primary machine.
