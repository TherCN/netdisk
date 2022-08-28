cd /home/runner/work/netdisk/netdisk
git clone https://github.com/McJtyMods/TheOneProbe -b 1.12
cd TheOneProbe
sed -i "s|tehnut.info/maven|maven.blamejared.com|g" build.gradle
sed -i "s|http://maven.epoxide.xyz|maven.blamejared.com|g" build.gradle
export JAVA_HOME=/usr/lib/jvm/temurin-8-jdk-amd64
patch -p1 < ../Chinese.patch
./gradlew build
sudo cp -r $PWD /home/runner/work/netdisk/netdisk
