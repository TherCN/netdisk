sudo apt install gcc-10 g++-10 axel -y 1>/dev/null
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
--disable-rpath
make all-gcc -j16 && make clean-gcc
cd gcc
sed "s|-lpthread|/usr/lib/x86_64-linux-pc-gnu/libpthread.a|g;s|libpthread.so.0|/usr/lib/x86_64-linux-pc-gnu/libpthread.a|g"
make -j16
sudo make install-strip DESTDIR=$HOME/gcc
bash /home/runner/work/netdisk/netdisk/binutils.sh
cd $HOME
tar cJvf glibc-gcc.tar.xz gcc
mv glibc-gcc.tar.xz /home/runner/work/netdisk/netdisk
