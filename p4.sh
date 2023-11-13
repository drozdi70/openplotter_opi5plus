sudo apt-get install --no-install-recommends gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal gnome-core -y
sudo apt-get install xorg lightdm xfce4 tango-icon-theme gnome-icon-theme dbus-x11 xfce4-goodies -y
sudo apt-get install xfonts-base -y
sudo apt-get install tightvncserver xterm -y
sudo apt-get install tigervnc-tools -y
touch ~/.Xresources
cp vnc_start.sh /home/orangepi/work/
mkdir /home/orangepi/.vnc/
cp -f xstartup /home/orangepi/.vnc/
