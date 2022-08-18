all:
	mkdir ~/wine-dirs
	cp * ~/wine-dirs
	cd ~/wine-dirs; ./full_build.sh


clean:
	rm -rf ~/wine-dirs
	sudo rm -rf /srv/chroot/ubuntu_i386
	sudo rm -f /etc/schroot/chroot.d/ubuntu_i386.conf
