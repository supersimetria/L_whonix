#!/bin/bash
#titul---------------+
#
#ver.001.004
#
#--------------------+
#
#paper-icon-theme---------------------------------------------------------------------------------------------------+
cd; git clone https://github.com/snwh/paper-icon-theme.git
cd paper-icon-theme
meson "build" --prefix=/usr
sudo ninja -C "build" install
cd ..; sudo rm -r paper-icon-theme
#chicago95----------------------------------------------------------------------------------------------------------+
cd; git clone https://github.com/grassmunk/Chicago95.git
sudo cp -r Chicago95/Theme/Chicago95 /usr/share/themes/
sudo cp -r Chicago95/Icons/* /usr/share/icons/
sudo rm -r Chicago95/
#infinalit----------------------------------------------------------------------------------------------------------+
wget -O ~/infinality.deb https://launchpad.net/~no1wantdthisname/+archive/ubuntu/ppa/+files/fontconfig-infinality_20130104-0ubuntu0ppa1_all.deb
sudo dpkg -i ~/infinality.deb; rm ~/infinality.deb
(
echo 3;
) | sudo bash /etc/fonts/infinality/infctl.sh setstyle
sudo sed -i '712 s/USE_STYLE="DEFAULT"/USE_STYLE="UBUNTU"/g' /etc/profile.d/infinality-settings.sh
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuEU3
