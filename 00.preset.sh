#!/bin/bash
#titul---------------+
#
#ver.001.010
#
#--------------------+
#
#check--------------------------------------------------------------------------------------------------------------+
whonixcheck
#update-------------------------------------------------------------------------------------------------------------+
sudo apt-get update; sudo apt-get upgrade -y; sudo apt-get dist-upgrade -y
#packeges-----------------------------------------------------------------------------------------------------------+
sudo apt install autoconf automake baobab bleachbit build-essential build-essential catfish dconf-cli dh-autoreconf engrampa etherape flameshot fontforge fonts-droid-fallback fonts-hack-ttf git glib-2.0-dev gnome-session-canberra gobject-introspection htop htop intltool libcanberra-gtk-module libcanberra-gtk0 libcanberra-gtk3-module libgtk2.0-dev libreoffice libreoffice-l10n-en-gb libxfce4ui-1-dev lightdm-gtk-greeter-settings make mc meson nmap nmap npm onionshare openssh-client openssh-client openssl openssl openvpn openvpn pidgin python3-pip pidgin-otr pkg-config psi-plus psi-plus python-exconsole qt5-style-plugins qt5ct qtox rdesktop sakura telegram-desktop terminator thunar-gtkhash thunderbird tilix whonix-xfce-desktop-config xfce4-goodies xfce4-notifyd zsh-autosuggestions zsh-syntax-highlighting -y
#remove-------------------------------------------------------------------------------------------------------------+
sudo apt remove lightdm-autologin-greeter
sudo apt remove --auto-remove
#pip----------------------------------------------------------------------------------------------------------------+
pip3 install b0mb3r xion
#update-torbrowser--------------------------------------------------------------------------------------------------+
update-torbrowser --ordinary --noask
#grub---------------------------------------------------------------------------------------------------------------+
sudo sed -i '7 s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp /etc/rads.d/30_default.conf /etc/rads.d/30_default.conf.bak
sudo sed -i '52 s/rads_wait_seconds=10/rads_wait_seconds=3/g' /etc/rads.d/30_default.conf
#git-vol------------------------------------------------------------------------------------------------------------+
cd ~/; git clone https://github.com/supersimetria/L_whonix.git
sh ~/L_whonix/01.compilation.sh
sh ~/L_whonix/02.useradd.sh
sh ~/L_whonix/03.dot.sh
#sudo rm -r L_whonix
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuC8u
#link https://wwh-club.us/index.php?threads/statja-organizacija-raboty-na-os-whonix.72494/
