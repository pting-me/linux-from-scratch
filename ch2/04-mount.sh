#!/bin/bash

export LFS=/mnt/lfs

# mount file system
mkdir -pv $LFS
mount -v -t ext3 /dev/sda2 $LFS

# mount /usr for seperate partition
#mkdir -pv $LFS/usr
#mount -v -t ext3 /dev/<yyy> $LFS

# enable swap partition
/sbin/swapon -v /dev/sda3
