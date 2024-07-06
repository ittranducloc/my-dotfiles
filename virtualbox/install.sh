#! /usr/bin/env bash
echo "Install Virtual Box - general-purpose full virtualizer for x86 hardware, targeted at server, desktop and embedded use"
# get download link based on linux distro
# https://www.virtualbox.org/wiki/Linux_Downloads
cd /tmp
wget https://download.virtualbox.org/virtualbox/7.0.18/virtualbox-7.0_7.0.18-162988~Ubuntu~jammy_amd64.deb
sudo dkpg -i ./virtualbox-7.0_7.0.18-162988~Ubuntu~jammy_amd64.deb
if [ $? -eq 1 ]; then
	echo "Fix dependency problems"
	# https://stackoverflow.com/questions/53343241/dependency-problems-leaving-unconfigured/53343313#53343313
	# Instruct dpkg to "fix" itself
	sudo dpkg --configure -a
	# This will instruct apt-get to correct dependencies and continue to configure your packages.
	sudo apt-get -f install
	echo "Re-install the second time"
	sudo dkpg -i ./virtualbox-7.0_7.0.18-162988~Ubuntu~jammy_amd64.deb
	if [ $? -eq 1 ]; then
		echo "Maybe the right version of gcc complier missing. Check setup log to confirm"
		cat /var/log/vbox-setup.log
		# Install right gcc version to compile this version of virtual box
		sudo apt install gcc-12
		echo "Re-install the third time"
		sudo dkpg -i ./virtualbox-7.0_7.0.18-162988~Ubuntu~jammy_amd64.deb
	fi
fi
echo 'Add the current user to vboxusers to resolve "cannot enumerate usb devices" error'
echo "check vboxusers group exists"
compgen -g | grep vboxusers
echo "Current user: $USER"
sudo usermod -a -G vboxusers $USER
getent group vboxusers
