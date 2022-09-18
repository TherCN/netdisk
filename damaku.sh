cd damaku
sudo apt update && sudo apt install python3 python3-pip -y
pip3 install  --upgrade protobuf
./danmu.py
mv *.xml ..
cd ..
mv *.xml damaku.xml
