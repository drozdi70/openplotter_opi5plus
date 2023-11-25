sudo pip3 install adafruit-circuitpython-ahtx0
sudo pip3 install adafruit-circuitpython-htu21d
cd /usr/lib/python3/dist-packages/openplotterI2c
sudo mv gpio.py gpio.py.ORIG
sudo mv openplotterI2c.py openplotterI2c.py.ORIG
sudo mv openplotterI2cRead.py openplotterI2cRead.py.ORIG
sudo mv startup.py startup.py.ORIG
cd /home/orangepi/work/openplotter_opi5plus
sudo cp -pf gpio.py /usr/lib/python3/dist-packages/openplotterI2c
sudo cp -pf openplotterI2c.py /usr/lib/python3/dist-packages/openplotterI2c
sudo cp -pf openplotterI2cRead.py /usr/lib/python3/dist-packages/openplotterI2c
sudo cp -pf  startup.py.i2c /usr/lib/python3/dist-packages/openplotterI2c/startup.py
cp i2c_read.sh ~/work
sudo cp -pf openplotter-i2c-read.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable openplotter-i2c-read.service
sudo systemctl stop openplotter-i2c-read.service
sudo systemctl start openplotter-i2c-read.service
