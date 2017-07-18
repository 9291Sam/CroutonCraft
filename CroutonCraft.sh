#/bin/bash
#Checking Device Compatibility
cd /home/chronos/user
#
uname -m > cpu
#
echo "Making sure your device is compatible"
echo ""
sleep 1

#
if grep -q "x86_64" cpu;
#
  then echo "You have a compatible device"  ;
#
  else echo "Sorry, you do not have a compatible device. You are not able to Install Minecraft on your chromebook"
      while true; do
        read -p "Do you want more details on as to why your device is incompatible?" yn
          case $yn in
          [Yy]* ) echo "
  Your device Has a ARM or a incompatible X86 cpu which is unable to run the LWJGL code that Minecraft is based on."

 exit; break;;
          [Nn]* ) exit;;
          * ) echo "Please answer y or n";;
      esac
  done
 fi
echo ""
echo "Cleaning up"
echo ""
cd /tmp
sudo rm -f crouton
sleep 1
echo "Downloading Installer"
cd /tmp;
wget -q https://raw.githubusercontent.com/dnschneid/crouton/master/installer/crouton
echo "Moving to the Installer to Cache"
sleep 1
echo "Starting Installer"
echo ""
sleep 1
echo "You are now installing Minecraft this will take a while"
echo ""
echo "In about 15-45 Minutes you will be prompted for a Username and a UNIX password (Just a normal password) rembember both of these you will need them later"
#sudo sh crouton -r xenial -t xfce,audio,xorg,cli-extra -n Minecraft
# Goto the home folder in the chroot
cd /usr/local/chroots/Minecraft/home
Go into the Users Folder
cd *
cd Documents
wget https://raw.githubusercontent.com/9291Sam/CroutonCraft/master/InstallMinecraft.sh
cd ..
cd Desktop
wget https://raw.githubusercontent.com/9291Sam/CroutonCraft/master/InstallMinecraft.desktop
echo ""
echo "Double Click The \"Install Minecraft\" Icon on your desktop when booted"
echo ""
echo "Booting"
sleep 5
echo "This may take a while"
sleep 5
echo "In order to start Minecraft again simply type sudo startxfce4"
sleep 5
sudo startxfce4
exit 0
