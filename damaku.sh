cd damaku
sudo apt update && sudo apt install python3 python3-pip -y
sudo snap install protobuf
pip3 install  --upgrade protobuf
sudo python3 danmu.py
mv *.xml ..
cd ..
mv *.xml damaku.xml
