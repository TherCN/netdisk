echo '[archlinuxcn]
Server = https://mirrors.bfsu.edu.cn/archlinuxcn/$arch'>>/etc/pacman.conf
echo 'Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch'>/etc/pacman.d/mirrorslist
pacman -Syu wqy-zenhei archlinuxcn-keyring chromium base base-devel git --noconfirm
pacman -S pikaur mesa hmcl wine wine-mono wine-gecko winetricks
pacman -U https://thercn.github.io/netdisk/File/java8-openjfx-8.u202-4-x86_64.pkg.tar.zst
reboot
