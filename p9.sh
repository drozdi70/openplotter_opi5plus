sudo apt install libfftw3-dev libglfw3-dev libvolk2-dev libsoapysdr-dev libairspyhf-dev libiio-dev libad9361-dev librtaudio-dev libhackrf-dev -y
sudo apt install libglew-dev libglu-dev libglu1-mesa-dev -y
sudo apt install libglfw3-dev libglew-dev libairspyhf-dev libiio-dev libad9361-dev libairspy-dev librtlsdr-dev portaudio19-dev libzstd1 libzstd-dev limesuite gcc -y
sudo apt-get update -y
sudo apt-get install x11-xserver-utils -y
sudo apt-get install libgl1-mesa-glx libegl1-mesa libgles2-mesa libgles2-mesa-dev -y
sudo apt-get install mesa-utils libgl1-mesa-glx -y
sudo apt-get install llvm llvm-dev -y
cd ~/work
git clone https://github.com/drowe67/codec2.git
cd codec2
mkdir build
cd build
cmake ../
make -j4
sudo make install
sudo ldconfig
cd ~/work
git clone https://github.com/AlexandreRouma/SDRPlusPlus.git
cd SDRPlusPlus
mkdir build
cd build
cmake .. -DOPT_BUILD_SOAPY_SOURCE=ON -DOPT_BUILD_BLADERF_SOURCE=OFF -DOPT_BUILD_NEW_PORTAUDIO_SINK:BOOL=ON -DOPT_BUILD_M17_DECODER:BOOL=ON
make -j4
sudo make install
sudo ldconfig
cd ~/work/openplotter_opi5
sudo dpkg -i ./virtualgl_3.1_arm64.deb
echo "Please choose 1 and Y,Y,Y and X next..."
sudo /opt/VirtualGL/bin/vglserver_config 
sudo reboot
