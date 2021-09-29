#!/bin/bash
#titul---------------+
#
#ver.001.010
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
(
 echo n;
) | sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i '11 s/ZSH_THEME="robbyrussell"/ZSH_THEME="Chicago95"/g' ~/.zshrc
sed -i '73 s/plugins=(git)/plugins=(npm git npm osx rake sudo dotenv vagrant bundler composer web-search)/g' ~/.zshrc
git clone https://github.com/powerline/fonts.git
cd fonts; ./install.sh; cd ..; rm -rf fonts
#chicago95----------------------------------------------------------------------------------------------------------+
cd; git clone https://github.com/grassmunk/Chicago95.git
#[Общезистемная ручная установка] (опционально)---------------------------------------------------------------------+
sudo cp -r Chicago95/Theme/Chicago95/ /usr/share/themes/
sudo cp -r Chicago95/Icons/* /usr/share/icons/

  #Enabling Chicago95-----------------------------------------------------------------------------------------------+

    #Enabling the GTK theme
        #  Open the XFCE settings manager > Appearance.
        #  Choose Chicago95 as the theme style.
        #
      #Enable the icon theme
        #  Open the XFCE settings manager > Appearance > Icons.
        #  Select Chicago95 or Chicago95-tux.
        #
      #Enabling the Window Manager theme
        #  Open the XFCE settings manager > Window Manager.
        #  Choose Chicago95 as the theme style.
        #  Set Title font to Sans Bold, 8 points.
        #
      #Enabling the notification theme
        #  Open the XFCE settings manager > Notifications.
        #  Choose Chicago95 for the theme.
        #  Adjust Opacity to 100%.



#[Конфигурация GTK3]------------------------------------------------------------------------------------------------+
mkdir -p ~/.config/gtk-3.0
cp ~/Chicago95/Extras/override/gtk-3.22/gtk.css ~/.config/gtk-3.0/

#[Слияние темы QT5 с qt5ct]-----------------------------------------------------------------------------------------+
sudo sed -i 's/export XDG_DATA_DIRS/export QT_QPA_PLATFORMTHEME=qt5ct/' /etc/X11/Xsession.d/55xfce4-session

#[Курсоры]----------------------------------------------------------------------------------------------------------+
sudo cp -r ~/Chicago95/Cursors/ /usr/share/icons/
sudo cp -r ~/Chicago95/Cursors/ ~/.icons

#[Шрифт MS Sans Serif]----------------------------------------------------------------------------------------------+
sudo mkdir -p /usr/share/fonts/truetype/ms_sans_serif
mkdir -p ~/.config/fontconfig/conf.d/
wget https://github.com/cmcmahan/Xplanet/raw/master/fonts/micross.ttf
wget -O ~/MSSansSerif.ttf https://andryushkin.ru/wp-content/fonts/MicrosoftSansSerifRegular/MicrosoftSansSerifRegular.ttf -N
sudo mv micross.ttf MSSansSerif.ttf /usr/share/fonts/truetype/ms_sans_serif/
cd ~/Chicago95/Extras/; sudo cp 99-ms-sans-serif.conf 99-ms-sans-serif-bold.conf /usr/share/fonts/truetype/ms_sans_serif

#    Enabling the font:---------------------------------------------------------------------------------------------+
#      Open the XFCE settings manager > Appearance > Fonts tab.
#      Set the "Default font" to "Microsoft Sans Serif Regular" size 8.
#      Open the XFCE settings manager > Window Manager.
#      Set the "Title font" to Microsoft Sans Serif Bold" size 8.
#      For XFCE 4.12 users, you can set the font for the Orage panel clock by right-clicking the panel clock, selecting Properties, then next to Line 1, change the font to Microsoft Sans Serif, style Regular, size 8. Inside the Line 1 box, add two spaces before and after the value in the box, to apply some spacing.

#[Баш терминал шрифтов]:--------------------------------------------------------------------------------------------+
cd ..; mkdir -p ~/.fonts/truetype
cp -r Fonts/vga_font/ ~/.fonts/truetype/
fc-cache -f -v

  #включить шрифт]:-------------------------------------------------------------------------------------------------+
#In xfce4-term go to the Edit->Preferences and click on the Appearance tab and select the font Less Perfect DOS VGA or More Pefect DOS VGA, size 12. For better readability, uncheck "Allow bold text".
#
#If desired, you can use an MS-DOS style cursor by going to the General tab, setting "Cursor shape" to "Underline" and checking the box for "Cursor blinks".

#[Темы терминала]]:-------------------------------------------------------------------------------------------------+
  #bash=====
  mkdir -p ~/.local/share/xfce4/terminal/colorschemes
  cp Extras/Chicago95.theme ~/.local/share/xfce4/terminal/colorschemes/
  sed -i '22 s/echo "Microsoft(R) Windows 95"/echo "FF0000.Line(R) Lunar"/g' ~/Chicago95/Extras/DOSrc
  sed -i '23 s/echo "   (C)Copyright Microsoft Corp 1981-1996."/echo "   (C)Copyright FF0000.Line Inc 1999-2077."/g' ~/Chicago95/Extras/DOSrc
  cat Extras/DOSrc >> ~/.bashrc

  #ZSH
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
