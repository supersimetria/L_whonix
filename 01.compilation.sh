#!/bin/bash
#titul---------------+
#
#ver.001.011
#
#--------------------+
#
#paper-icon-theme---------------------------------------------------------------------------------------------------+
cd; git clone https://github.com/snwh/paper-icon-theme.git
cd paper-icon-theme
meson "build" --prefix=/usr
sudo ninja -C "build" install
cd ..; sudo rm -r paper-icon-theme
#oh-my-zsh----------------------------------------------------------------------------------------------------------+
(
 echo n;
) | sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i '11 s/ZSH_THEME="robbyrussell"/ZSH_THEME="Chicago95"/g' ~/.zshrc
sed -i '73 s/plugins=(git)/plugins=(npm git npm osx rake sudo dotenv vagrant bundler composer web-search)/g' ~/.zshrc
git clone https://github.com/powerline/fonts.git
cd fonts; ./install.sh; cd ..; rm -rf fonts
#chicago95----------------------------------------------------------------------------------------------------------+
cd; git clone https://github.com/grassmunk/Chicago95.git
#[system-wide manual install]---------------------------------------------------------------------------------------+
sudo cp -r Chicago95/Theme/Chicago95/ /usr/share/themes/
sudo cp -r Chicago95/Icons/* /usr/share/icons/
#[GTK3 override configuration]--------------------------------------------------------------------------------------+
mkdir -p ~/.config/gtk-3.0
cp ~/Chicago95/Extras/override/gtk-3.22/gtk.css ~/.config/gtk-3.0/
#[QT5 theme configration with qt5ct]--------------------------------------------------------------------------------+
sudo sed -i 's/export XDG_DATA_DIRS/export QT_QPA_PLATFORMTHEME=qt5ct/' /etc/X11/Xsession.d/55xfce4-session
#[cursors]----------------------------------------------------------------------------------------------------------+
sudo cp -r ~/Chicago95/Cursors/ /usr/share/icons/
sudo cp -r ~/Chicago95/Cursors/ ~/.icons
#[MS Sans Serif font]-----------------------------------------------------------------------------------------------+
sudo mkdir -p /usr/share/fonts/truetype/ms_sans_serif
mkdir -p ~/.config/fontconfig/conf.d/
wget https://github.com/cmcmahan/Xplanet/raw/master/fonts/micross.ttf
wget -O ~/MSSansSerif.ttf https://andryushkin.ru/wp-content/fonts/MicrosoftSansSerifRegular/MicrosoftSansSerifRegular.ttf -N
sudo mv micross.ttf MSSansSerif.ttf /usr/share/fonts/truetype/ms_sans_serif/
cd ~/Chicago95/Extras/; sudo cp 99-ms-sans-serif.conf 99-ms-sans-serif-bold.conf /usr/share/fonts/truetype/ms_sans_serif
#[bash terminal Fonts]:---------------------------------------------------------------------------------------------+
cd ..; mkdir -p ~/.fonts/truetype
cp -r Fonts/vga_font/ ~/.fonts/truetype/
fc-cache -f -v
#[terminal themes]:-------------------------------------------------------------------------------------------------+
  #bash-----
  mkdir -p ~/.local/share/xfce4/terminal/colorschemes
  cp Extras/Chicago95.theme ~/.local/share/xfce4/terminal/colorschemes/
  sed -i '22 s/echo "Microsoft(R) Windows 95"/echo "FF0000.Line(R) Lunar"/g' ~/Chicago95/Extras/DOSrc
  sed -i '23 s/echo "   (C)Copyright Microsoft Corp 1981-1996."/echo "   (C)Copyright FF0000.Line Inc 1999-2077."/g' ~/Chicago95/Extras/DOSrc
  cat Extras/DOSrc >> ~/.bashrc

  #oh-my-zsh MS-DOS theme-----
  cp Extras/Chicago95.zsh-theme ~/.oh-my-zsh/themes/
  sed -i '3 s/echo "Microsoft(R) Windows 95"/echo "FF0000.Line(R) Lunar"/g' ~/Chicago95/Extras/ZSHDOSrc
  sed -i '4 s/echo "   (C)Copyright Microsoft Corp 1981-1996."/echo "   (C)Copyright FF0000.Line Inc 1999-2077."/g' ~/Chicago95/Extras/ZSHDOSrc
  cat Extras/ZSHDOSrc >> ~/.zshrc
#sound--------------------------------------------------------------------------------------------------------------+
sudo cp -r sounds/Chicago95/ /usr/share/sounds/
xfconf-query -c xsettings -p /Net/SoundThemeName -s Chicago95
cd; sudo rm -r Chicago95/
#infinalit----------------------------------------------------------------------------------------------------------+
wget -O ~/infinality.deb https://launchpad.net/~no1wantdthisname/+archive/ubuntu/ppa/+files/fontconfig-infinality_20130104-0ubuntu0ppa1_all.deb
sudo dpkg -i ~/infinality.deb; rm ~/infinality.deb
(
echo 3;
) | sudo bash /etc/fonts/infinality/infctl.sh setstyle
sudo sed -i '712 s/USE_STYLE="DEFAULT"/USE_STYLE="UBUNTU"/g' /etc/profile.d/infinality-settings.sh
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuEU3
