sudo apt update && sudo apt install qemu-user-static proot -y
wget http://os.archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz
mkdir alarm
sudo tar xf ArchLinuxARM-aarch64-latest.tar.gz -C alarm
echo config>alarm/root/.bash_profile
cp config alarm/bin
./launch.sh
