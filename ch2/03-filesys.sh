#!/bin/bash

# sda2 - root filesystem
mke2fs -jv /dev/sda2

# sda3 - swap
mkswap /dev/sda3
