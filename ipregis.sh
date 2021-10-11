#!/bin/bash
cd /usr/bin
wget -O add-ip "script.zxbxns.me/sc/add-ip.sh"
wget -O del-ip "script.zxbxns.me/sc/del-ip.sh"
wget -O xp-ip "script.zxbxns.me/sc/xp-ip.sh"
chmod +x add-ip
chmod +x del-ip
chmod +x xp-ip

cd /home/vps/public_html
mkdir akses
echo "#list Ip Vps" >> /home/vps/public_html/akses/token

rm -f ipregis.sh
