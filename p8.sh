sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install -y cmake
sudo apt-get install freeglut3-dev -y
sudo cp -f no-sdr.conf /etc/modprobe.d/
./1installAPI.sh
