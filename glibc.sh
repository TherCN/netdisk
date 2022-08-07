. install_cross_toolchain.sh 1>/dev/null
axel https://ftp.gnu.org/gnu/glibc/glibc-2.36.tar.gz
tar xvf glibc-2.36.tar.gz
mkdir build
for file in glibc-patch/*
do
patch -p0 -i $file
done
cd build
echo "slibdir=/usr/lib" >> configparms
echo "rtlddir=/usr/lib" >> configparms
echo "sbindir=/usr/bin" >> configparms
echo "rootsbindir=/usr/bin" >> configparms
../glibc-2.35/configure \
--host=aarch64-linux-gnu \
--build=aarch64-linux-gnu \
--prefix=/usr \
--disable-multi-arch
make -j8
sudo make install DESTDIR=/home/runner/work/netdisk/netdisk/glibc
cd ..
tar cJvf glibc-2.36-main.tar.xz glibc
