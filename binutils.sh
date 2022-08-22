cd /home/runner/work/netdisk/netdisk
axel http://ftp.gnu.org/gnu/binutils/binutils-2.39.tar.xz -q
tar xf binutils-2.39.tar.xz
cd binutils-2.39
./configure --prefix=/usr --disable-shared --enable-static --disable-rpath
make -j16
make install-strip DESTDIR=$HONE/gcc
