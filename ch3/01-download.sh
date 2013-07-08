#!/bin/bash

mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources
wget -i wget-list -P $LFS/sources

pushd $LFS/sources
md5sum -c md5sums > md5sums_log
popd

echo "You can view the log at $LFS/sources/md5sums_log"
