#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
IZIN=$( curl http://sc.zxbxns.me:81/akses/token | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
exit 0
fi
clear
echo "Starting Update Please Wait..."
sleep 5
clear
echo "Download And Install Patch..."
sleep 5
cd /usr/bin
wget -O usernew "script.zxbxns.my.id/sc/usernew.sh"
wget -O trial "script.zxbxns.my.id/sc/trial.sh"
wget -O menu "script.zxbxns.my.id/sc/menu.sh"
wget -O profile "script.zxbxns.my.id/sc/profile.sh"
chmod +x usernew
chmod +x trial
chmod +x menu
chmod +x profile
clear 
echo "Successfuly Download And Install Patch..."
sleep 3
cd
echo "1.2" > /home/ver
clear
echo " Successfully Update To Latest Version Script"
echo " Reboot 10 Sec"
sleep 10
reboot

