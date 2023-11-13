sudo apt-get update -y
sudo apt-get upgrade -y
sudo cp -f no-rtl.conf /etc/modprobe.d/
sudo apt-get install git-core -y
sudo apt-get install git -y
sudo apt-get install cmake -y
sudo apt-get install libusb-1.0-0-dev -y
sudo apt-get install build-essential -y
cd ~/work
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr/
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo ldconfig
sudo cp -f ../../rtl-sdr/rtl-sdr.rules /etc/udev/rules.d/
sudo reboot
