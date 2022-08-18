#!/bin/bash

# inside the chroot, build the 32 bit wine, then install:
mkdir -p ~/wine-dirs/wine32-build
cd ~/wine-dirs/wine32-build
PKG_CONFIG_PATH=/usr/bin/pkg-config ../wine-source/configure --with-wine64=../wine64-build --prefix="$HOME/wine-dirs/wine-install" --with-wine-tools="$HOME/wine-dirs/wine32-prebuild"

if [ $# -ne 0 ] && [ "$1" -eq "clean" ]
then
    make clean
fi

make -j 12
rm -rf ~/wine-dirs/wine-install
make install
