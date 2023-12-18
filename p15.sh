sudo rm /usr/lib/python3.*/EXTERNALLY-MANAGED
sudo apt install hostapd dnsmasq dnsmasq-base bridge-utils dialog usbmuxd libnss-mdns avahi-utils libavahi-compat-libdnssd-dev rfkill python3-pip chrony -y
sudo apt-get install libi2c-dev -y
sudo apt-get install i2c-tools python3-pip python3-dev python3-pil -y
sudo apt install python3-smbus -y
sudo apt install i2c-tools python3-rpi.gpio -y
sudo pip3 install requests 
cd ~/work
sudo rm -rf openplotter-i2c
git clone https://github.com/openplotter/openplotter-i2c
cd openplotter-i2c
sudo dpkg-buildpackage -b -j4
cd ..
sudo dpkg -i openplotter-i2c_3.3.12-stable_all.deb
sudo i2cPostInstall
#cd ~/work/openplotter_opi5plus
#sudo cp -f orangepi5plus.py  /usr/local/lib/python3.11/dist-packages/adafruit_blinka/board/orangepi/orangepi5.py
