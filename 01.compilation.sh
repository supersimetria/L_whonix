#!/bin/bash
#titul---------------+
#
#ver.001.007
#
#--------------------+
#
#paper-icon-theme---------------------------------------------------------------------------------------------------+
cd; git clone https://github.com/snwh/paper-icon-theme.git
cd paper-icon-theme
meson "build" --prefix=/usr
sudo ninja -C "build" install
cd ..; sudo rm -r paper-icon-theme
#ZSH----------------------------------------------------------------------------------------------------------------+
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i '11 s/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
sed -i '73 s/plugins=(git)/plugins=(npm git npm osx rake sudo dotenv vagrant bundler composer web-search)/g' ~/.zshrc
git clone https://github.com/powerline/fonts.git
cd fonts; ./install.sh; cd ..; rm -rf fonts
#infinalit----------------------------------------------------------------------------------------------------------+
wget -O ~/infinality.deb https://launchpad.net/~no1wantdthisname/+archive/ubuntu/ppa/+files/fontconfig-infinality_20130104-0ubuntu0ppa1_all.deb
sudo dpkg -i ~/infinality.deb; rm ~/infinality.deb
(
echo 3;
) | sudo bash /etc/fonts/infinality/infctl.sh setstyle
sudo sed -i '712 s/USE_STYLE="DEFAULT"/USE_STYLE="UBUNTU"/g' /etc/profile.d/infinality-settings.sh
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuEU3
