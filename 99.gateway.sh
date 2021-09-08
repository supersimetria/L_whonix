#!/bin/bash
#titul---------------+                                                                                              #
#                                                                                                                   #
#ver.001.001                                                                                                        #
#                                                                                                                   #
#--------------------+                                                                                              #
#                                                                                                                   #
#check--------------------------------------------------------------------------------------------------------------+
systemcheck                                                                                                         #
sudo service sdwdate restart                                                                                       	#
#update-------------------------------------------------------------------------------------------------------------+
sudo apt-get update; sudo apt-get upgrade -y; sudo apt-get dist-upgrade -y                                          #
#packeges-----------------------------------------------------------------------------------------------------------+
sudo apt install git mc nmap -y                                                                                    	#
#grub---------------------------------------------------------------------------------------------------------------+
sudo sed -i '7 s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub                                                 #
sudo grub-mkconfig -o /boot/grub/grub.cfg                                                                           #
sudo cp /etc/rads.d/30_default.conf /etc/rads.d/30_default.conf.bak                                                 #
sudo sed -i '52 s/rads_wait_seconds=10/rads_wait_seconds=3/g' /etc/rads.d/30_default.conf                           #
#password-----------------------------------------------------------------------------------------------------------+
(                                                                                                                   #
  echo 987654;                                                                                                      #
  echo 987654;                                                                                                      #
) | sudo passwd user                                                                                                #
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuC8v                                                                                          #
