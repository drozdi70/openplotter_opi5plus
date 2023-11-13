sudo curl https://raw.githubusercontent.com/orangepi-xunlong/linux-orangepi/orange-pi-5.10-rk3588/arch/arm64/boot/dts/rockchip/overlay/rk3588-i2c5-m3.dts -o rk3588-i2c5-m3.dts
sudo armbian-add-overlay rk3588-i2c5-m3.dts
sudo curl https://raw.githubusercontent.com/orangepi-xunlong/linux-orangepi/orange-pi-5.10-rk3588/arch/arm64/boot/dts/rockchip/overlay/rk3588-uart0-m2.dts -o rk3588-uart0-m2.dts
sudo armbian-add-overlay rk3588-uart0-m2.dts
sudo curl https://raw.githubusercontent.com/orangepi-xunlong/linux-orangepi/orange-pi-5.10-rk3588/arch/arm64/boot/dts/rockchip/overlay/rk3588-uart4-m0.dts -o rk3588-uart4-m0.dts
sudo armbian-add-overlay rk3588-uart4-m0.dts
sudo apt-get install gpsd gpsd-clients minicom -y
sudo adduser orangepi dialout
echo "overlays=opi5-i2c5-m3 opi5-uart0-m2" | sudo tee -a /boot/armbianEnv.txt
sudo systemctl stop serial-getty@ttyS0.service
sudo systemctl disable serial-getty@ttyS0.service
sudo cp 99-gps.rules /etc/udev/rules.d
sudo cp -f gpsd /etc/default
sudo reboot
