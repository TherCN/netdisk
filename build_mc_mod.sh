git clone https://github.com/McJtyMods/TheOneProbe -b 1.12
mkdir forge && cd forge
wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2860/forge-1.12.2-14.23.5.2860-mdk.zip
unzip *mdk.zip
cd ../TheOneProbe
sed -i "s|tehnut.info|maven.blamejared.com|g" build.gradle
./gradlew
