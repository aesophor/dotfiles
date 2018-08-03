#!/usr/bin/env bash
# Full system backup

# Labels for backup name
host=Veil
distro=gentoo
type=full
date=`date "+%F"`

# Backup destination and full path to the tarball.
backup_dest=/mnt/transcend/FullDiskBackup
backup_file="$backup_dest/$host-$distro-$type-$date.tar.gz"

# Check if the destination exists.
if [ ! -d $backup_dest ]; then
    echo "The backup destination is unreachable, aborting..."
    exit
fi

# Ask user for confirmation.
echo "Performing full disk backup"
echo ""
echo "Destination: $backup_file"
echo "/dev, /mnt,/proc, /sys, /tmp will be excluded from this backup."
echo ""
echo "To restore from the backup later, boot into a LiveCD, mount the disk on /mnt/mountpoint,"
echo "cd into the mountpoint and run: tar --xattrs -xvzpf $backup_file -C /mnt/mountpoint"
echo ""
echo -n "Are you ready to backup? (y/n): "
read executeback

# Execute backup.
if [ $executeback == "y" ]; then
    sudo tar --xattrs -cvzpf $backup_file --exclude=$backup_file --exclude=/dev --exclude=/mnt --exclude=/proc --exclude=/sys --exclude=/tmp --exclude=/lost+found /
fi
