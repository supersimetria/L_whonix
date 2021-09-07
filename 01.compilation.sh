#!/bin/bash
#titul---------------+																								#
#																													#
#ver.001.001																										#
#																													#
#--------------------+																								#
#																													#
#paper-icon-theme---------------------------------------------------------------------------------------------------+
wget -O ~/paper-src.tar.gz https://github.com/snwh/paper-icon-theme/archive/v1.3.4.tar.gz							#
sudo mkdir /opt/paper-icon/; sudo tar -zxf paper-src.tar.gz -C /opt/paper-icon --strip-components 1					#
cd /opt/paper-icon/; sudo bash autogen.sh																			#
sudo make																											#
sudo make install																									#
cd; sudo rm -r paper-src.tar.gz																						#
#infinalit----------------------------------------------------------------------------------------------------------+
wget -O ~/infinality.deb https://launchpad.net/~no1wantdthisname/+archive/ubuntu/ppa/+files/fontconfig-infinality_20130104-0ubuntu0ppa1_all.deb	#
sudo dpkg -i ~/infinality.deb; rm ~/infinality.deb																	#
(																													#
echo 3;																												#
) | sudo bash /etc/fonts/infinality/infctl.sh setstyle																#
sudo sed -i '712 s/USE_STYLE="DEFAULT"/USE_STYLE="UBUNTU"/g' /etc/profile.d/infinality-settings.sh					#
#link-file----------------------------------------------------------------------------------------------------------+
#link to git.io																										#