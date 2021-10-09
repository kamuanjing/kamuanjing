#!/bin/bash
clear
read -p "Input Your Ip Vps: " ip
CLIENT_EXISTS=$(grep -w $ip /home/listip.txt | wc -l)
if [[ ${CLIENT_EXISTS} == '1' ]]; then
echo ""
echo "vps sudah terdaftar."
exit 1
fi
read -p "Input Your Name: " user
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "$ip" >> /home/vps/public_html/akses/token
echo -e "### | $user | $ip | $exp" >> /home/listip.txt
clear
echo "Done"
echo "Your IP Has Been Registered"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "IP         : $ip"
echo -e "Name       : $user"
echo -e "Expired ON : $exp"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
