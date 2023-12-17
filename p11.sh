cd ~/work
git clone https://github.com/jvde-github/AIS-catcher.git
cd AIS-catcher
mkdir build
cd build
cmake ..
make -j4
sudo make install
sudo ldconfig
cd ~/work/openplotter_opi5plus
cp aiscatcher.conf.rtl ~/work/aiscacther.conf
cp start-ais.sh ~/work/
sudo cp aiscatcher.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable aiscatcher.service
sudo systemctl start aiscatcher.service
