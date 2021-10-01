#!/bin/bash
#titul---------------+
#
#ver.001.014
#
#--------------------+
#
#update-------------------------------------------------------------------------------------------------------------+
sudo apt-get update; sudo apt-get upgrade -y; sudo apt-get dist-upgrade -y
#check--------------------------------------------------------------------------------------------------------------+
sudo -u sdwdate touch /run/sdwdate/first_success
whonixcheck
#packeges-----------------------------------------------------------------------------------------------------------+
sudo apt install $(cat ~/L_whonix/mod/01.1.pl-0) -y
#remove-------------------------------------------------------------------------------------------------------------+
sudo apt remove lightdm-autologin-greeter
sudo apt remove --auto-remove
#pip----------------------------------------------------------------------------------------------------------------+
pip3 install b0mb3r
#update-torbrowser--------------------------------------------------------------------------------------------------+
update-torbrowser --ordinary --noask
#grub---------------------------------------------------------------------------------------------------------------+
sudo sed -i '7 s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp /etc/rads.d/30_default.conf /etc/rads.d/30_default.conf.bak
sudo sed -i '52 s/rads_wait_seconds=10/rads_wait_seconds=3/g' /etc/rads.d/30_default.conf
#git-vol------------------------------------------------------------------------------------------------------------+
cd ~/; git clone https://github.com/supersimetria/L_whonix.git
#sh ~/L_whonix/01.compilation.sh
#sh ~/L_whonix/02.useradd.sh
#sh ~/L_whonix/03.dot.sh
#sudo rm -r L_whonix
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuC8u
#link https://wwh-club.us/index.php?threads/statja-organizacija-raboty-na-os-whonix.72494/
