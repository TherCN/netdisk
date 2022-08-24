sudo echo '[archlinuxcn]
Server = https://mirrors.bfsu.edu.cn/archlinuxcn/$arch'>>/etc/pacman.conf
sudo echo 'Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch'>/etc/pacman.d/mirrorlist
sudo pacman -Syu wqy-zenhei archlinuxcn-keyring chromium base base-devel git --noconfirm
sudo pacman -S pikaur code mesa hmcl
pikaur -S java8-openjfx
