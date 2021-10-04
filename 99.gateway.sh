#!/bin/bash
#titul---------------+
#
#ver.001.007
#
#--------------------+
#
#check--------------------------------------------------------------------------------------------------------------+
sudo -u sdwdate touch /run/sdwdate/first_success
systemcheck
#update-------------------------------------------------------------------------------------------------------------+
sudo apt-get update; sudo apt-get dist-upgrade -y
#packeges-----------------------------------------------------------------------------------------------------------+
sudo apt install git mc nmap -y
#shell--------------------------------------------------------------------------------------------------------------+
cd; git clone https://github.com/grassmunk/Chicago95.git
#font-----
mkdir -p ~/.fonts/truetype
cp -r ~/Chicago95/Fonts/vga_font/ ~/.fonts/truetype/
fc-cache -f -v
#bash-----
mkdir -p ~/.local/share/xfce4/terminal/colorschemes
cp ~/Chicago95/Extras/Chicago95.theme ~/.local/share/xfce4/terminal/colorschemes/
sed -i '22 s/echo "Microsoft(R) Windows 95"/echo "FF0000.Line(R) Lunar"/g' ~/Chicago95/Extras/DOSrc
sed -i '23 s/echo "   (C)Copyright Microsoft Corp 1981-1996."/echo "   (C)Copyright FF0000.Line Inc 1999-2077."/g' ~/Chicago95/Extras/DOSrc
cat ~/Chicago95/Extras/DOSrc >> ~/.bashrc
source ~/.bashrc
sudo rm -r Chicago95/
#grub---------------------------------------------------------------------------------------------------------------+
sudo sed -i '7 s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp /etc/rads.d/30_default.conf /etc/rads.d/30_default.conf.bak
sudo sed -i '52 s/rads_wait_seconds=10/rads_wait_seconds=3/g' /etc/rads.d/30_default.conf
#password-----------------------------------------------------------------------------------------------------------+
(
  echo 987654;
  echo 987654;
) | sudo passwd user
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuC8v
