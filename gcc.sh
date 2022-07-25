sudo apt update
sudo apt install gcc-10-aarch64-linux-gnu axel libgmp-dev libmpc-dev libmpfr-dev -y
axel https://ftp.gnu.org/gnu/gcc/gcc-12.1.0/gcc-12.1.0.tar.xz 1>/dev/null
tar xf gcc-12.1.0.tar.xz
mkdir build
cd gcc-12.1.0
patch -p1 <../fix-termux.patch
bash mksysroot
cd ../build
../gcc-12.1.0/configure CC="aarch64-linux-gnu-gcc-10" CXX="aarch64-linux-gnu-g++-10" --prefix=/data/data/com.termux/files/usr/gnu --enable-languages=c,c++ --disable-multilib --host=aarch64-linux-android --build=aarch64-linux-android --enable-default-pie --enable-shared --disable-bootstrap --disable-libsanitizer --with-arch=armv8-a --with-system-zlib
make -j8
sudo make install-strip DESTDIR=$HOME/gcc
cd $HOME
tar cJvf glibc-gcc.tar.xz gcc
mv glibc-gcc.tar.xz /home/runner/work/netdisk/netdisk
