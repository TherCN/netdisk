sudo apt update
sudo apt install axel unzip -y
axel https://dl.google.com/android/repository/android-ndk-r17c-linux-x86_64.zip?hl=zh_cn
unzip -q android-ndk-r17c-linux-x64_64.zip
export NDK_ROOT=$PWD/android-ndk-r17c
export PATH=$NDK_ROOT/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/aarch64-linux-android/bin:$PATH
export NDKCC="aarch64-linux-android-gcc -isysroot=$NDK_ROOT/sysroot"
export NDKCXX="aarch64-linux-android-g++ -isysroot=$NDK_ROOT/sysroot"
