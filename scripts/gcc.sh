sudo apt install gcc-10 g++-10 axel -y 1>/dev/null
axel https://ftp.gnu.org/gnu/gcc/gcc-12.2.0/gcc-12.2.0.tar.xz 1>/dev/null
tar xf gcc-12.2.0.tar.xz
mkdir build
cd gcc-12.2.0
bash contrib/download_prerequisites
patch -p1 < ../fix.patch
#bash mksysroot
#sudo ln -s aarch64-linux-gnu-gcc-10 aarch64-linux-gnu-gcc
#sudo ln -s aarch64-linux-gnu-g++-10 aarch64-linux-gnu-g++
cd ../build
../gcc-12.2.0/configure \
--prefix=/usr \
--host=aarch64-linux-gnu --target=aarch64-linux-gnu \
--disable-multilib \
--enable-default-pie \
--disable-shared \
--disable-bootstrap \
--enable-static
make -j16
sudo make install-strip DESTDIR=$HOME/gcc
bash /home/runner/work/netdisk/netdisk/binutils.sh
cd $HOME
tar cJvf gcc.tar.xz gcc
mv gcc.tar.xz /home/runner/work/netdisk/netdisk
