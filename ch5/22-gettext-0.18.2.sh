#!/bin/bash

# extract
cd $LFS/sources
tar -zxf gettext-0.18.2.tar.gz
cd gettext-0.18.2

# cleanup
cd ..
rm -rf gettext-0.18.2