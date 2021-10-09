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
# hapus script
rm -f ipregis.sh
