#!/bin/bash

# you must run this script as root

# setup mount
export LFS=/mnt/lfs
mkdir -v $LFS/tools
ln -sv $LFS/tools /

# create lfs user and group
groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs
passwd lfs

# directories to be used by lfs user later
chown -v lfs $LFS/tools
chown -v lfs $LFS/sources

su - lfs

# create bash scripts
cat > ~/.bash_profile << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash
EOF

cat > ~/.bashrc << "EOF"
set +h
umask 022
LFS=/mnt/lfs
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/tools/bin:/bin:/usr/bin
export LFS LC_ALL LFS_TGT PATH
EOF

source ~/.bash_profile
