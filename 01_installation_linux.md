# Practical 1: Installation of Unix/Linux Operating System

## Aim
To install a Linux operating system.

## Procedure (Ubuntu example)
1. Download the Ubuntu Desktop ISO from the official Ubuntu website.
2. Back up important data. Installing an OS or repartitioning a disk can erase data.
3. Create a bootable USB using a trusted tool such as Rufus or balenaEtcher.
4. Restart the computer and open its one-time boot menu (key varies by manufacturer).
5. Boot from the USB and select **Try or Install Ubuntu**.
6. Choose language, keyboard layout, network, and installation type.
7. Carefully select the disk/partition option. Choose manual partitioning only if you understand the partitions; verify the target disk before making changes.
8. Create a user account and password, then begin installation.
9. Restart when prompted and remove the USB.
10. Update the system:
   ```bash
   sudo apt update
   sudo apt upgrade
   ```

## Result
Linux installation and initial system update completed.
