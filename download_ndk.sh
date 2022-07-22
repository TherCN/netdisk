sudo apt update
sudo apt install axel unzip -y
axel https://dl.google.com/android/repository/android-ndk-r17c-linux-x86_64.zip?hl=zh_cn
unzip -q android-ndk-r17c-linux-x64_64.zip
export NDK_ROOT=$PWD/android-ndk-r17c
cd $NDK_ROOT
echo '$NDK_ROOT/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin/aarch64-linux-android-$0 --sysroot=/AppData/android-ndk-r17c/platforms/android-21/arch-arm64 -isystem $NDK_ROOT/sysroot/usr/include -isystem $NDK_ROOT/sysroot/usr/include/aarch64-linux-android $@'>gcc
ln -s gcc g++
chmod 755 gcc
