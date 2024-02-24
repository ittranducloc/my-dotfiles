#! /usr/bin/env bash
echo "=========Install Proton VPN client"
cd /tmp
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb
sudo dkpg -i ./protonvpn-stable-release_1.0.3-2_all.deb
sudo apt update
sudo apt install -y proton-vpn-gnome-desktop
