#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
w="\e[44;1;37m"
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
IZIN=$( curl http://sc.zxbxns.my.id:81/akses/token | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear

echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " $w                    ⇱ V2RAY/VMESS & VLESS ⇲                      $NC"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo -e "    [01] Create V2RAY Vmess Websocket Account $red[add-ws]$NC" 
echo -e "    [02] Delete V2RAY Vmess Websocket Account $red[del-ws]$NC"
echo -e "    [03] Check User Login V2RAY Vmess $red[cek-ws]$NC"
echo -e "    [04] Extending V2RAY Vmess Account Active Life $red[renew-ws]$NC"                        
echo -e ""
echo -e "    [05] Create V2RAY Vless Websocket Account $red[add-vless]$NC" 
echo -e "    [06] Delete V2RAY Vless Websocket Account $red[del-vless]$NC"
echo -e "    [07] Check User Login V2RAY Vless $red[cek-vless]$NC" 
echo -e "    [08] Extending V2RAY Vless Account Active Life $red[renew-vless]$NC"
echo -e "    [xx] Back To Menu $red[menu]$NC"
echo -e ""
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "    [••] Please Input Number  [1-8 or xx] : " v2ray
echo -e ""
case $v2ray in
1)
add-ws
;;
2)
del-ws
;;
3)
cek-ws
;;
4)
renew-ws
;;
5)
add-vless
;;
6)
del-vless
;;
7)
cek-vless
;;
8)
renew-vless
;;
xx)
menu
;;
*)
echo "    Please Enter An Correct Number"
;;
esac
