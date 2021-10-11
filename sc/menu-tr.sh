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
echo -e " $w                    ⇱ TROJAN & TROJAN-GO ⇲                       $NC"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo -e "    [01] Create Trojan Account $red[add-tr]$NC" 
echo -e "    [02] Delete Trojan Account $red[del-tr]$NC"
echo -e "    [03] Check User Login Trojan $red[cek-tr]$NC"
echo -e "    [04] Extending Trojan Account Active Life $red[renew-tr]$NC"                        
echo -e ""
echo -e "    [05] Create Trojan-Go Account $red[add-trgo]$NC" 
echo -e "    [06] Delete Trojan-Go Account $red[del-trgo]$NC" 
echo -e "    [07] Extending Trojan-Go Account Active Life $red[renew-trgo]$NC"
echo -e "    [xx] Back To Menu $red[menu]$NC"
echo -e ""
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "    [••] Please Input Number  [1-8 or xx] : " trojan
echo -e ""
case $trojan in
1)
add-tr
;;
2)
del-tr
;;
3)
cek-tr
;;
4)
renew-tr
;;
5)
add-trgo
;;
6)
del-trgo
;;
7)
renew-trgo
;;
xx)
menu
;;
*)
echo "    Please Enter An Correct Number"
;;
esac
