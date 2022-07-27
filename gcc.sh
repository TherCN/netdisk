. install_cross_toolchain.sh
axel https://ftp.gnu.org/gnu/gcc/gcc-12.1.0/gcc-12.1.0.tar.xz 1>/dev/null
tar xf gcc-12.1.0.tar.xz
mkdir build
cd gcc-12.1.0
patch -p1 <../fix-termux.patch
bash contrib/download_prerequisites
cd ..
bash mksysroot
cd /usr/bin
sudo ln -s aarch64-linux-gnu-gcc-10 aarch64-linux-gnu-gcc
sudo ln -s aarch64-linux-gnu-g++-10 aarch64-linux-gnu-g++
cd $OLDPWD/build
../gcc-12.1.0/configure \
--prefix=/data/data/com.termux/files/usr/gnu \
--enable-languages=c,c++ \
--disable-multilib \
--build=aarch64-linux-android \
--host=aarch64-linux-android \
--enable-default-pie \
--enable-shared \
--disable-bootstrap \
--disable-libgcc \
--with-arch=armv8-a \
--with-system-zlib
make all-gcc -j8
sudo make install-strip-gcc DESTDIR=$HOME/gcc
cd ..
nproc >build/config.log
cp build/config.log glibc-gcc-optput.tar.xz
cd $HOME
tar cJvf glibc-gcc.tar.xz gcc
mv glibc-gcc.tar.xz /home/runner/work/netdisk/netdisk
