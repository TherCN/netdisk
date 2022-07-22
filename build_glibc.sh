sudo apt update
sudo apt install gcc-12-aarch64-linux-gnu axel -y
axel https://ftp.gnu.org/gnu/glibc/glibc-2.35.tar.gz
tar xvf glibc-2.35.tar.gz
mkdir build
cd build
../glibc-2.35/configure --prefix=/data/data/com.termux/files/usr CC="aarch64-linux-gnu-gcc-12" CXX="aarch64-linux-gnu-g++-12"
make -j8
sudo make install DESTDIR=$HOME/glibc
cd $HOME
tar cvf glibc-2.35.tar.xz glibc
