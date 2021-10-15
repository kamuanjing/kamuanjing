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
IZIN=$( curl http://sc.zxbxns.my.id:81/akses/token | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
<<<<<<< HEAD
wget http://sc.zxbxns.my.id:81/sc/start-update.sh && chmod +x start-update.sh && ./start-update.sh 
=======
wget http://sc.zxbxns.my.id:81/sc/start-update.sh && chmod +x start-update.sh && ./start-update.sh && rm start-update.sh
>>>>>>> 44a8eb3cdcce3dbc2fb5090db585884809490394
