./2buildSoapy.sh
./4buildWidgets.sh
sudo ldconfig
./4buildWidgets_3.2.3.sh
sudo ldconfig
cd ~/work
git clone https://github.com/pothosware/SoapyRTLSDR.git
cd SoapyRTLSDR
mkdir build
cd build
cmake ..
make -j4
sudo make install
sudo ldconfig
sudo reboot
