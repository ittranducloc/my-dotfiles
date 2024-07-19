#! /usr/bin/env bash
# https://github.com/JoseExposito/touchegg
read -p "Have you just reboot computer" -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
	flatpak search Touché
	flatpak install -y com.github.joseexposito.touche
	exit 0
fi
echo "=========Install Touchégg - Linux multi-touch gesture recognizer"
cd /tmp
wget https://github.com/JoseExposito/touchegg/releases/download/2.0.17/touchegg_2.0.17_amd64.deb
sudo dpkg -i ./touchegg_2.0.17_amd64.deb
if [[ $? -ne 0 ]]; then
	echo "Fix dependencies problem"
	sudo dpkg --configure -a
	sudo apt -f install
fi
# https://github.com/JoseExposito/touche
echo "Install touche - The desktop application to configure Touchégg"
echo "===Install flatpak"
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo "Enable GNOME Shell multi-touch gestures on X11 at link"
echo "https://extensions.gnome.org/extension/4033/x11-gestures/"
echo "To complete setup, restart your system"
