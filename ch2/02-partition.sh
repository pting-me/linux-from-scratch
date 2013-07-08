#!/bin/bash

# sda1 - boot
# sda2 - root
# sda3 - swap
fdisk /dev/sda << EOF
n
p
1
 
+100M
n
p
2

+10G
n
p
3

+4G
p
w
EOF
