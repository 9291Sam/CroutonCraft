#/bin/bash
sudo apt-get install software-properties-common  #Install REPO handler
sudo apt-add-repository ppa:webupd8team/java # Install java REPO
cd ~/Documents 
mkdir Games
cd Games
wget -q http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar #Get the Minecraft Launcher
sudo apt-get install oracle-java8-installer #Install Java
sudo apt-get update -y; sudo apt-get upgrade -y;
