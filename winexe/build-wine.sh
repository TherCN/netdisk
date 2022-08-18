#!/bin/bash
cd /home/runner/work/netdisk/netdisk/winexe
. install_dep.sh >/dev/null
sudo apt install axel >/dev/null
WINE_MAIN_VERSION=7.0
WINE_VERSION=7.0
axel https://dl.winehq.org/wine/source/${WINE_MAIN_VERSION}/wine-${WINE_VERSION}.tar.xz 1>/dev/null
tar xf wine-${WINE_VERSION}.tar.xz
cd wine-${WINE_VERSION}
sed -i "s|/tmp|/data/data/com.termux/files/usr/tmp|g" $(find -name "*.c")
patch -p1 ../fix-build.patch
cd ..
mkdir wine64
cd wine64
../wine-${WINE_VERSION}/configure --prefix=/data/data/com.termux/files/home/wine $@ --enable-win64 --disable-rpath
make -j8
sudo make install DESTDIR=/home/runner/work/netdisk/netdisk/wine STRIP=1
cd /home/runner/work/netdisk/netdisk/wine/data/data/com.termux/files/home/wine
tar cJf wine-${WINE_VERSION}-termux.tar.xz *
cp wine-${WINE_VERSION}-termux.tar.xz /home/runner/work/netdisk/netdisk/
