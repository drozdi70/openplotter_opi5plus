sudo apt-get update -y
sudo apt-get upgrade -y
sudo pip3 install --upgrade setuptools -y 
sudo apt-get install -y python3-smbus python3-dev i2c-tools
sudo adduser orangepi i2c
sudo apt-get install -y python3 
sudo apt-get install python3-full -y
sudo apt-get install git -y
sudo apt-get install python3-pip -y
sudo apt-get install libgpiod2 python3-libgpiod -y
sudo rm -rf /usr/lib/python3.11/EXTERNALLY-MANAGED
sudo pip3 install gpiod  -y
cd ~/work
git clone https://github.com/orangepi-xunlong/wiringOP.git -b next
cd wiringOP
sudo ./build clean
sudo ./build
sudo pip3 install adafruit-blinka
sudo pip3 install --upgrade adafruit-blinka adafruit-platformdetect 
#sudo python3 -m pip install --force-reinstall adafruit-blinka
sudo pip3 install adafruit-circuitpython-ahtx0 
sudo pip3 install adafruit-circuitpython-htu21d
sudo pip3 install adafruit-circuitpython-vcnl4040
cd ~/work/openplotter_opi5plus
cp -f blinka_test.py ..
sudo mv /usr/local/lib/python3.11/dist-packages/adafruit_blinka/board/orangepi/orangepi5plus.py /usr/local/lib/python3.11/dist-packages/adafruit_blinka/board/orangepi/orangepi5plus.py.org
sudo cp -f orangepi5plus.py  /usr/local/lib/python3.11/dist-packages/adafruit_blinka/board/orangepi/orangepi5plus.py
sudo mv /usr/local/lib/python3.11/dist-packages/adafruit_blinka/microcontroller/rockchip/rk3588/pin.py /usr/local/lib/python3.11/dist-packages/adafruit_blinka/microcontroller/rockchip/rk3588/pin.py.org
sudo cp -p pin5plus.py /usr/local/lib/python3.11/dist-packages/adafruit_blinka/microcontroller/rockchip/rk3588/pin.py
sudo reboot
