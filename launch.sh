exec sudo proot \
 -0 \
 -q qemu-aarch64-static \
 -r alarm \
 -b /dev \
 -b /proc \
 -b alarm/root:/dev/shm \
 -w /root \
 /usr/bin/env -i \
 HOME=/root \
 PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin \
 TERM=$TERM \
 LANG=zh_CN.UTF-8 \
 /bin/bash --login
