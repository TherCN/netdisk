. install_cross_toolchain.sh 1>/dev/null
../gcc-12.1.0/configure \
--prefix=/usr \
--enable-languages=c,c++ \
--disable-multilib \
--host=x86_64-pc-linux-gnu \
--target=aarch64-linux-gnu \
--enable-default-pie \
--enable-shared \
--disable-bootstrap \
--disable-libgcc $@
