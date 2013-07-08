#!/bin/bash

groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs

passwd lfs

chown -v lfs $LFS/tools
chown -v lfs $LFS/sources

# will switch to lfs user
su - lfs
