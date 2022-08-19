. install_cross_toolchain.sh 1>/dev/null
axel https://ftp.gnu.org/gnu/glibc/glibc-2.36.tar.gz 1>/dev/null
tar xf glibc-2.36.tar.gz
cd glibc-2.36
sed -i "s|/etc/ld.so|/data/data/com.termux/files/usr/etc/ld.so|g" $(find -name "*.c")
cd ..
mkdir build
for file in glibc-patch/*
do
patch -p0 -i $file
done
cd build
../glibc-2.36/configure \
--host=aarch64-linux-gnu \
--build=aarch64-linux-gnu \
--prefix=/data/data/com.termux/files/usr \
--disable-multi-arch
make -j8
sudo make install DESTDIR=/home/runner/work/netdisk/netdisk/glibc
cd ..
tar cJvf glibc-2.36-main.tar.xz glibc
