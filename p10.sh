sudo apt-get update -y
sudo apt-get install -y cmake gnuradio-dev gr-osmosdr libqt5svg5-dev libpulse-dev -y
sudo apt-get install qtbase5-dev -y
sudo apt-get install qtdeclarative5-dev -y
sudo apt-get install libqt5svg5-dev -y
sudo apt-get install libsndfile1 libsndfile1-dev -y
cd ~/work
git clone https://github.com/gqrx-sdr/gqrx.git
cd gqrx
mkdir build
cd build
export CXXFLAGS=-O2
cmake ..
make -j4
sudo make install
sudo ldconfig
cd ~/work
git clone git://git.osmocom.org/gr-osmosdr
cd gr-osmosdr/
mkdir build
cd build/
cmake ../
make -j4
sudo make install
sudo ldconfig
