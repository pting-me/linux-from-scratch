#!/bin/bash

# mount file system
mkdir -pv $LFS
mount -v -t ext3 /dev/sda2 $LFS

# mount /usr for seperate partition
#mkdir -pv $LFS/usr
#mount -v -t ext3 /dev/<yyy> $LFS

# change swap partition permissions
chmod 0660 /dev/sda3

# enable swap partition
/sbin/swapon -v /dev/sda3
