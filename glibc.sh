. install_cross_toolchain.sh 1>/dev/null
axel https://ftp.gnu.org/gnu/glibc/glibc-2.36.tar.gz 1>/dev/null
tar xf glibc-2.36.tar.gz
mkdir build
for file in glibc-patch/*
do
patch -p0 -i $file
done
cd build
../glibc-2.36/configure \
--host=aarch64-linux-gnu \
--build=aarch64-linux-gnu \
--prefix=/data/data/bin.mt.plus/files/term/usr \
--disable-multi-arch
make -j8
sudo make install DESTDIR=/home/runner/work/netdisk/netdisk/glibc
cd ..
tar cJvf glibc-2.36-main.tar.xz glibc
