sudo rm /usr/lib/python3.*/EXTERNALLY-MANAGED
sudo apt install flatpak fakeroot npm -y
sudo apt install nodejs -y
cd ~/work
git clone https://github.com/openplotter/openplotter-opencpn-installer.git
cd openplotter-opencpn-installer
dpkg-buildpackage -b
cd ..
sudo dpkg -i openplotter-opencpn-installer_3.3.0-stable_all.deb
sudo opencpnPostInstall
#
sudo apt install libnss-mdns avahi-utils libavahi-compat-libdnssd-dev -y
cd ~/work
git clone https://github.com/openplotter/openplotter-signalk-installer
cd openplotter-signalk-installer
dpkg-buildpackage -b
cd ..
sudo dpkg -i openplotter-signalk-installer_3.2.0-stable_all.deb
sudo signalkPostInstall
#
cd ~/work
git clone https://github.com/steve-m/kalibrate-rtl.git
sudo apt-get install libtool libfftw3-dev -y
cd kalibrate-rtl
./bootstrap && CXXFLAGS='-W -Wall -O3' 
./configure
make 
sudo make install
sudo ldconfig
cd ~/work
git clone https://github.com/dgiardini/rtl-ais
cd rtl-ais
make
sudo make install
sudo ldconfig
# 
sudo apt install gnome-menus desktop-file-utils mailcap -y
sudo apt install kalibrate-rtl rtl-ais rtl-sdr python3-pip -y
cd  ~/work
git clone https://github.com/openplotter/openplotter-sdr-vhf
cd openplotter-sdr-vhf
dpkg-buildpackage -b
cd ..
sudo dpkg -i openplotter-sdr-vhf_3.0.9-stable_all.deb
sudo sdrVhfPostInstall
cd ~/work/openplotter_opi5plus
sudo mv /usr/lib/python3/dist-packages/openplotterSdrVhf/startup.py /usr/lib/python3/dist-packages/openplotterSdrVhf/startup.py.ORIG
sudo cp -pf  startup.py.sdrvhf /usr/lib/python3/dist-packages/openplotterSdrVhf/startup.py
