#!/bin/bash
#titul---------------+																								#
#																													#
#ver.001.001																										#
#																													#
#--------------------+																								#
#																													#
#check--------------------------------------------------------------------------------------------------------------+
whonixcheck																											#
#update-------------------------------------------------------------------------------------------------------------+
sudo apt-get update; sudo apt-get upgrade -y; sudo apt-get dist-upgrade -y											#
#packeges-----------------------------------------------------------------------------------------------------------+
sudo apt install autoconf automake bleachbit build-essential build-essential catfish dconf-cli dh-autoreconf engrampa etherape flameshot fonts-droid-fallback fonts-hack-ttf git git glib-2.0-dev gobject-introspection htop htop intltool libgtk2.0-dev libreoffice libreoffice-l10n-en-gb libxfce4ui-1-dev make mc nmap nmap npm onionshare openssh-client openssh-client openssl openssl openvpn openvpn pidgin pidgin-otr pkg-config psi-plus psi-plus python-exconsole qtox rdesktop sakura telegram-desktop terminator thunderbird tilix xfce4-goodies zsh-autosuggestions zsh-syntax-highlighting -y	#
#update-torbrowser--------------------------------------------------------------------------------------------------+
update-torbrowser --ordinary --noask																				#
#grub---------------------------------------------------------------------------------------------------------------+
sudo sed -i '7 s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub													#
sudo grub-mkconfig -o /boot/grub/grub.cfg																			#
sudo cp /etc/rads.d/30_default.conf /etc/rads.d/30_default.conf.bak													#
sudo sed -i '52 s/rads_wait_seconds=10/rads_wait_seconds=3/g' /etc/rads.d/30_default.conf							#
#git-vol------------------------------------------------------------------------------------------------------------+
cd ~/; git clone https://github.com/supersimetria/lunar_whonix.git													#
sh ~/lunar_whonix/01.useradd.sh																						#
sh ~/lunar_whonix/02.grub_timeout.sh																				#
sh ~/lunar_whonix/03.hand-assembled.sh																				#
sh ~/lunar_whonix/04.dotfiles.sh																					#
clear; sh ~/lunar_whonix/98.get_version_script.sh																	#
#link-file----------------------------------------------------------------------------------------------------------+
#link to git.io																									#
#link https://wwh-club.us/index.php?threads/statja-organizacija-raboty-na-os-whonix.72494/							#