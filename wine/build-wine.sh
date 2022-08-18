cd /home/runner/work/netdisk/netdisk/build-wine
bash /home/runner/work/netdisk/netdisk/wine/linux-amd64-wine
bash /home/runner/work/netdisk/netdisk/wine/builder_linux_amd64_runtime
bash /home/runner/work/netdisk/netdisk/wine/builder_linux_amd64_wine
cd /home/runner/work/netdisk/netdisk/build-wine
tar cJf wine-${WINE_VERSION}-termux.tar.xz wine
cp wine-${WINE_VERSION}-termux.tar.xz /home/runner/work/netdisk/netdisk/
