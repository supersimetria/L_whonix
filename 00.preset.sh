#!/bin/bash
#titul---------------+
#
#ver.001.017
#
#--------------------+
#
#update-------------------------------------------------------------------------------------------------------------+
sudo apt-get update; sudo apt-get dist-upgrade -y
#check--------------------------------------------------------------------------------------------------------------+
sudo -u sdwdate touch /run/sdwdate/first_success
whonixcheck
#packeges-----------------------------------------------------------------------------------------------------------+
sudo apt install $(curl https://raw.githubusercontent.com/supersimetria/L_whonix/main/mod/01.1.pl-0) -y
#update-torbrowser--------------------------------------------------------------------------------------------------+
update-torbrowser --ordinary --noask
#grub---------------------------------------------------------------------------------------------------------------+
sudo sed -i '7 s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp /etc/rads.d/30_default.conf /etc/rads.d/30_default.conf.bak
sudo sed -i '52 s/rads_wait_seconds=10/rads_wait_seconds=3/g' /etc/rads.d/30_default.conf
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuC8u
#link https://wwh-club.us/index.php?threads/statja-organizacija-raboty-na-os-whonix.72494/
