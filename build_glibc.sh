bash download_ndk.sh
axel https://ftp.gnu.org/gnu/glibc/glibc-2.35.tar.gz
tar xvf glibc-2.35.tar.gz
mkdir build
cd build
../glibc-2.35/configure --prefix=/data/data/com.termux/files/usr CC=$NDK_ROOT/gcc CXX=$NFK_ROOT/g++
make -j8
sudo make install DESTDIR=$HOME/glibc
cd $HOME
tar cvf glibc-2.35.tar.xz glibc
