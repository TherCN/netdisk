#!/bin/bash

cd ~/wine-dirs
mkdir wine64-build
cd ~/wine-dirs/wine64-build/
../wine-source/configure --prefix="$HOME/wine-dirs/wine-install" --enable-win64

if [ $# -ne 0 ] && [ "$1" -eq "clean" ]
then
    make clean
fi
make -j 12
make install DESTDIR=/home/runner/work/netdisk/netdisk/wine STRIP=1
