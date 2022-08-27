git clone https://github.com/mirror/busybox/ -b 1_35_stable busybox
cd busybox
make defconfig
make -j16
make install
mkdir /home/runner/work/netdisk/netdisk/busybox
cp -r _install/* /home/runner/work/netdisk/netdisk/busybox
cd /home/runner/work/netdisk/netdisk
tar cJvf busybox.tar.xz busybox
