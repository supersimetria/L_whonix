#!/bin/bash
#titul---------------+
#
#ver.001.002
#
#--------------------+
#
#useradd------------------------------------------------------------------------------------------------------------+
sudo groupadd -g 9999 user_09
sudo useradd -m -u 6666 -g 9999 -G 3,7,24,27,29,30,46,105,106,115,999 -s /bin/zsh user_06
sudo useradd -m -u 7777 -g 9999 -G 3,7,24,27,29,30,46,105,106,115,999 -s /bin/zsh user_07
sudo useradd -m -u 8888 -g 9999 -G 3,7,24,27,29,30,46,105,106,115,999 -s /bin/zsh user_08
sudo useradd -m -u 9999 -g 9999 -G 3,7,24,27,29,30,46,105,106,115,999 -s /bin/zsh user_09
#password-----------------------------------------------------------------------------------------------------------+
(
  echo 9876;
  echo 9876;
) | sudo passwd user_06
(
  echo 9876;
  echo 9876;
) | sudo passwd user_07
(
  echo 9876;
  echo 9876;
) | sudo passwd user_08
(
  echo 9876;
  echo 9876;
) | sudo passwd user_09
(
  echo 6PX42ps5;
  echo 6PX42ps5;
) | sudo passwd user
#link-file----------------------------------------------------------------------------------------------------------+
#link https://git.io/JuETl
