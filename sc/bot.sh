#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
IZIN=$( curl http://sc.zxbxns.me:81/akses/token | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
cd /root
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y
apt install npm -y
npm install
npm install botgram
apt install tmux -y
cd /usr/local/bin
wget http://sc.zxbxns.me/81/sc/oh.zip
unzip oh.zip

rm -f /oh.zip
echo -e "Ketik Node Server Dan Masukan Token Bot"

cat > /etc/systemd/system/bot.service << END 
[Unit] 
Description=Bot Telegram Service By Mail 

[Service] 
Type=simple 
User=root 
ExecStart=/usr/bin/node /usr/local/bin/server 
Restart=on-failure 

[Install] 
WantedBy=multi-user.target
END

rm -rf /bot.sh
