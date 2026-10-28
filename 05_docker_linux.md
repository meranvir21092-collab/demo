# Practical 5: Implementation of Docker on Linux

## Aim
To install and test Docker on Linux.

## Ubuntu/Debian outline
1. Check OS release:
   ```bash
   cat /etc/os-release
   ```
2. Follow Docker's official **Docker Engine on Ubuntu** instructions for the installed Ubuntu release. The supported repository/package setup changes over time, so use the current official guide rather than an old copied install command.
3. After installation, verify:
   ```bash
   sudo systemctl status docker
   sudo docker --version
   sudo docker run hello-world
   ```
4. Optional: inspect images and containers:
   ```bash
   sudo docker images
   sudo docker ps -a
   ```

## Notes
- Docker requires a compatible Linux kernel and service configuration.
- Adding a user to the `docker` group grants highly privileged access; do this only if you understand the security implications.
- If `systemctl` is unavailable, the environment may be a container or WSL instance with a different service setup.

## Result
Docker was verified by running the `hello-world` test container.
