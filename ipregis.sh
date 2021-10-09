#!bin/bash
cd /usr/bin
wget -O add-ip "https://raw.githubusercontent.com/kamuanjing/kamuanjing/p/add-ip.sh"
wget -O del-ip "https://raw.githubusercontent.com/kamuanjing/kamuanjing/p/del-ip.sh"
wget -O xp-ip "https://raw.githubusercontent.com/kamuanjing/kamuanjing/p/xp-ip.sh"
chmod +x add-ip
chmod +x del-ip
chmod +x xp-ip

cd /home/vps/public_html
mkdir akses
echo "#list Ip Vps" >> /home/vps/public_html/akses/token

rm -f ipregis.sh
