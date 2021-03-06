#!/bin/bash
#titul---------------+
#
#ver.001.008
#
#--------------------+
#
#bash---------------------------------------------------------------------------------------------------------------+
#rm ~/.bashrc*; wget -O ~/.bashrc https://git.io/JuaYS
#oh-my-zsh----------------------------------------------------------------------------------------------------------+
(
 echo n;
) | sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i '11 s/ZSH_THEME="robbyrussell"/ZSH_THEME="Chicago95"/g' ~/.zshrc
sed -i '73 s/plugins=(git)/plugins=(npm git npm osx rake sudo dotenv vagrant bundler composer web-search)/g' ~/.zshrc
git clone https://github.com/powerline/fonts.git
cd fonts; ./install.sh; cd ..; rm -rf fonts
#xfconf-------------------------------------------------------------------------------------------------------------+
#killall xfconfd
#cp ~/L_whonix/mod/02.xfce-perchannel-xml/* ~/.config/xfce4/xfconf/xfce-perchannel-xml/
#xfce4-panel -r
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuETK


#create-------------------------------------------------------------------------------------------------------------+
cd ~/.config/xfce4/xfconf/xfce-perchannel-xml/; tar -cf suka.tar.gz *.xml; cp suka.tar.gz ~/Desktop/; cd

killall xfconfd
tar xvzf 1xfconf.tar.gz .config/xfce4/xfconf/xfce-perchannel-xml/
xfce4-panel -r
