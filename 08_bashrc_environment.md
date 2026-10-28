# Practical 8: `.bashrc`, `/etc/bashrc` and Environment Variables

## Aim
To study shell startup files and environment variables.

- `~/.bashrc`: per-user Bash configuration, commonly read by interactive non-login Bash shells.
- `/etc/bashrc`: system-wide interactive Bash configuration on some distributions; others use `/etc/bash.bashrc`.
- `~/.profile` or `~/.bash_profile`: commonly used for login-shell setup.
- An environment variable is a named value inherited by child processes.

## Examples
```bash
echo "$HOME"
echo "$PATH"
export LAB_NAME="Linux Practical"
printenv LAB_NAME
env | less
```

To add a simple alias to `~/.bashrc`:
```bash
echo "alias ll='ls -alF'" >> ~/.bashrc
source ~/.bashrc
```

To set a variable only for one command:
```bash
LAB_NAME="Linux Practical" printenv LAB_NAME
```

## Result
Shell startup configuration and environment variables were examined.
