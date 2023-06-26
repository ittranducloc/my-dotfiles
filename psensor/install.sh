echo "Install psensor"
sudo apt install lm-sensors
sudo sensors-detect
sensors
sudo apt install psensor
[ $? -ne 0 ] && echo "Failed to install psensor"
