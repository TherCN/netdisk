sudo apt update && sudo apt install qemu-user-static proot -y
wget -q http://os.archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz
mkdir alarm
tar xf ArchLinuxARM-aarch64-latest.tar.gz -C alarm
./launch.sh
