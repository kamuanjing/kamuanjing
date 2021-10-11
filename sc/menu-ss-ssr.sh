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
echo -e " $w               ⇱ SHADOWSOCKS & SHADOWSOCKS-R ⇲                   $NC"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo -e "    [01] Create Shadowsocks Account $red[add-ss]$NC" 
echo -e "    [02] Delete Shadowsocks Account $red[del-ss]$NC"
echo -e "    [03] Check User Login Shadowsocks $red[cek-ss]$NC"
echo -e "    [04] Extending Shadowsocks Account Active Life $red[renew-ss]$NC"                        
echo -e ""
echo -e "    [05] Create Shaodwsocks-R Account $red[add-ssr]$NC" 
echo -e "    [06] Delete Shadowsocks-R Account $red[del-ssr]$NC" 
echo -e "    [07] Extending Shadowsocks-R Account Active Life $red[renew-ssr]$NC"
echo -e "    [08] Show Other Ssr Menu $red[ssr]$NC"
echo -e "    [xx] Back To Menu $red[menu]$NC"
echo -e ""
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "    [••] Please Input Number  [1-8 or xx] : " vpn
echo -e ""
case $vpn in
1)
add-ss
;;
2)
del-ss
;;
3)
cek-ss
;;
4)
renew-ss
;;
5)
add-ssr
;;
6)
del-ssr
;;
7)
renew-ssr
;;
8)
ssr
;;
xx)
menu
;;
*)
echo "    Please Enter An Correct Number"
;;
esac
