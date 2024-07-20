#! /usr/bin/env bash
source /home/loctd/.dotfiles/common/countdown.sh
# https://tecadmin.net/how-to-enable-or-disable-wayland-on-ubuntu-22-04-desktop/#google_vignette
read -p $'Choose display server protocol XOrg (traditional) or Wayland (simpler, more secure)? X(Xorg) / W(Wayland)\n' -n 1 -r
echo
if [[ $REPLY =~ ^[Xx]$ ]]; then
	# Uncomment
	sudo sed -i 's/# WaylandEnable=false/WaylandEnable=false/g' /etc/gdm3/custom.conf
	cat /etc/gdm3/custom.conf | grep WaylandEnable
	countdown 5 $'Will restart login session'
	sudo systemctl restart gdm3
else
	# comment
	sudo sed -i 's/WaylandEnable=false/# WaylandEnable=false/g' /etc/gdm3/custom.conf
	cat /etc/gdm3/custom.conf | grep WaylandEnable
	countdown 5 $'Will restart login session'
	sudo systemctl restart gdm3
fi
