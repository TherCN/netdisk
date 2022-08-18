#!/bin/bash

cd ~/wine-dirs
mkdir wine32-prebuild

# outside the chroot, configure 32 bit wine without x
cd ~/wine-dirs/wine32-prebuild
~/wine-dirs/wine-source/configure --without-x --prefix="$HOME/wine-dirs/wine32-install"

if [ $# -ne 0 ] && [ "$1" -eq "clean" ]
then
    make clean
fi

make -j 12
make install DESTDIR=/home/runner/work/netdisk/netdisk/wine STRIP=1
