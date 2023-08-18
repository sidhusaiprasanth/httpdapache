
## **Volume management commands**

```bash
lsblk              #list block devices
file -s /dev/...   # to see which file system is there
fdisk /dev/...     # partition
df -h              # disk free and used with mounted volumes
mount /dev/...  folder  # Mount device to a folder
umount folder           # Unmount device from the folder
blkid                  # To see UUID of a device or partition
vim /etc/fstab        # Make entry here to make volume mount permanent even after reboot

```
