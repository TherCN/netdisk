sudo apt update
sudo apt install gcc-10-aarch64-linux-gnu axel -y
axel https://ftp.gnu.org/gnu/glibc/glibc-2.35.tar.gz
tar xvf glibc-2.35.tar.gz
mkdir build
for file in glibc-patch/*
do
patch -p0 -i $file
done
cd build
../glibc-2.35/configure --host=aarch64-linux-android --build=aarch64-linux-android --prefix=/data/data/com.termux/files/usr/gnu CC="aarch64-linux-gnu-gcc-10" CXX="aarch64-linux-gnu-g++-10" --disable-multiarch
make -j8
sudo make install DESTDIR=/home/runner/work/netdisk/netdisk/glibc
cd ..
tar cJvf glibc-2.35-main.tar.xz glibc
