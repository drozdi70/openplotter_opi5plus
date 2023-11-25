sudo apt-get update -y
sudo apt-get upgrade -y
sudo rm -rf /usr/lib/python3.11/EXTERNALLY-MANAGED
sudo apt install python3-wxgtk4.0 python3-ujson python3-pyudev vlc matchbox-keyboard dh-python python3-all -y
sudo apt-get install debhelper dh-virtualenv -y
#cd ~/work
#git clone https://github.com/openplotter/openplotter-settings.git
#cd openplotter-settings
#sudo dpkg-buildpackage -b -j4 
#cd ..
#sudo dpkg -i openplotter-settings_3.6.6-stable_all.deb
cd ~/work/openplotter_opi5plus/
sudo dpkg -i openplotter-settings_4.0.10-beta_all.deb
sudo mv /usr/lib/python3/dist-packages/openplotterSettings/openplotterSettings.py /usr/lib/python3/dist-packages/openplotterSettings/openplotterSettings.py.orig
sudo cp -f openplotterSettings.py /usr/lib/python3/dist-packages/openplotterSettings/openplotterSettings.py
