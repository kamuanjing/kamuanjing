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
echo -e " $w                        ⇱ WIREGUARD ⇲                            $NC"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo -e "    [01] Create Wireguard Account $red[add-wg]$NC" 
echo -e "    [02] Delete Wireguard Account $red[del-wg]$NC"
echo -e "    [03] Check User Login Wireguard $red[cek-wg]$NC"
echo -e "    [04] Extending Wireguard Account Active Life $red[renew-wg]$NC"                        
echo -e "    [05] Check Wireguard User Interface $red[wg show]$NC"
echo -e "    [xx] Back To Menu $red[menu]$NC"
echo -e ""
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "    [••] Please Input Number  [1-5 or x] : "  wgr
echo -e ""
case $wgr in
1)
add-wg
;;
2)
del-wg
;;
3)
cek-wg
;;
4)
renew-wg
;;
5)
wg show
;;
xx)
menu
;;
*)
echo "    Please Enter An Correct Number"
;;
esac
