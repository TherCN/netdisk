sudo apt install gcc-10 g++-10 libc6-dev axel -y 1>/dev/null
axel https://ftp.gnu.org/gnu/gcc/gcc-12.1.0/gcc-12.1.0.tar.xz 1>/dev/null
tar xf gcc-12.1.0.tar.xz
mkdir build
cd gcc-12.1.0
bash contrib/download_prerequisites
patch -p1 < ../fix.patch
#bash mksysroot
#sudo ln -s aarch64-linux-gnu-gcc-10 aarch64-linux-gnu-gcc
#sudo ln -s aarch64-linux-gnu-g++-10 aarch64-linux-gnu-g++
cd ../build
../gcc-12.1.0/configure \
--prefix=/usr \
--host=x86_64-linux-gnu --target=x86_64-linux-gnu \
--disable-multilib \
--enable-default-pie \
--disable-shared \
--disable-bootstrap \
--enable-static \
--disable-rpath LDFLAGS_FOR_BUILD="-static" LDFLAGS="-static"
make -j16
sudo make install-strip DESTDIR=$HOME/gcc
bash /home/runner/work/netdisk/netdisk/binutils.sh
cd $HOME
tar cJvf glibc-gcc.tar.xz gcc
mv glibc-gcc.tar.xz /home/runner/work/netdisk/netdisk