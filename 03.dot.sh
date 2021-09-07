#!/bin/bash
#titul---------------+																								#
#																													#
#ver.001.001																										#
#																													#
#--------------------+																								#
#																													#
#ZSH----------------------------------------------------------------------------------------------------------------+
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"				#
sed -i '11 s/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc												#
sed -i '73 s/plugins=(git)/plugins=(npm git npm osx rake sudo dotenv vagrant bundler composer web-search)/g' ~/.zshrc	#
git clone https://github.com/powerline/fonts.git																	#
cd fonts; ./install.sh; cd ..; rm -rf fonts																			#
#link-file----------------------------------------------------------------------------------------------------------+
#link to git.io																										#