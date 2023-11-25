cd /usr/lib/python3/dist-packages/openplotterSdrVhf
sudo mv service.py service.py.ORIG
sudo mv openplotterSdrVhf.py openplotterSdrVhf.py.ORIG
sudo mv startup.py startup.py.ORIG
cd /home/orangepi/work/openplotter_opi5plus
sudo cp -pf service.py.sdrvhf /usr/lib/python3/dist-packages/openplotterSdrVhf/service.py
sudo cp -pf openplotterSdrVhf.py /usr/lib/python3/dist-packages/openplotterSdrVhf
sudo cp -pf  startup.py.sdrvhf /usr/lib/python3/dist-packages/openplotterSdrVhf/startup.py

