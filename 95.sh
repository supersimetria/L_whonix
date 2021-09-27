#!/bin/bash
#titul---------------+
#
#ver.001.001
#
#--------------------+
#
#chicago95----------------------------------------------------------------------------------------------------------+
cd; git clone https://github.com/grassmunk/Chicago95.git
sudo cp -r Chicago95/Theme/Chicago95 /usr/share/themes/
sudo cp -r Chicago95/Icons/* /usr/share/icons/
cp -r Chicago95/Extras/override/gtk-3.22/ /home/$USER/.config/gtk-3.0/
sudo sed -i 's/export XDG_DATA_DIRS/export QT_QPA_PLATFORMTHEME=qt5ct/' /etc/X11/Xsession.d/55xfce4-session
sudo cp -r  ~/Chicago95/Fonts/vga_font/ /usr/share/fonts/truetype/user@host:~$
fc-cache -f -v
mkdir -p ~/.local/share/xfce4/terminal/colorschemes
sudo cp ~/Chicago95/Extras/Chicago95.theme ~/.local/share/xfce4/terminal/colorschemes
sudo cp ~/Chicago95/Extras/Chicago95.zsh-theme ~/.oh-my-zsh/themes/
sudo cat ~/Chicago95/Extras/ZSHDOSrc >> ~/.zshrc
sudo rm -r Chicago95/
