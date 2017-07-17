#/bin/bash
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:webupd8team/java
cd ~/Documents
mkdir Games
cd Games
wget -q http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
sudo apt-get install oracle-java8-installer
sudo apt-get update -y; sudo apt-get upgrade -y;
cd ~/Desktop
wget Minecraft.desktop