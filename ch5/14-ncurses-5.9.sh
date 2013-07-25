#!/bin/bash

# extract
cd $LFS/sources
tar -zxf ncurses-5.9.tar.gz
cd ncurses-5.9

# cleanup
cd ..
rm -rf ncurses-5.9