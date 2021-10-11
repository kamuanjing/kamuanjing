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
echo -e " $w                   ⇱ PPTP & L2TP & SSTP ⇲                        $NC"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo -e "    [01] Create PPTP Account $red[add-pptp]$NC" 
echo -e "    [02] Delete PPTP Account $red[del-pptp]$NC"
echo -e "    [03] Check User Login PPTP $red[cek-pptp]$NC"
echo -e "    [04] Extending PPTP Account Active Life $red[renew-pptp]$NC"                        
echo -e ""
echo -e "    [05] Create L2TP Account $red[add-l2tp]$NC" 
echo -e "    [06] Delete L2TP Account $red[del-l2tp]$NC" 
echo -e "    [07] Extending L2TP Account Active Life $red[renew-l2tp]$NC"
echo -e ""
echo -e "    [08] Create SSTP Account $red[add-sstp]$NC" 
echo -e "    [09] Delete SSTP Account $red[del-sstp]$NC"
echo -e "    [10] Check User Login SSTP $red[cek-sstp]$NC"
echo -e "    [11] Extending SSTP Account Active Life $red[renew-sstp]$NC" 
echo -e "    [xx] Back To Menu $red[menu]$NC"
echo -e ""
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "    [••] Please Input Number  [1-11 or xx] : " vpn
echo -e ""
case $vpn in
1)
add-pptp
;;
2)
del-pptp
;;
3)
cek-pptp
;;
4)
renew-pptp
;;
5)
add-l2tp
;;
6)
del-l2tp
;;
7)
renew-l2tp
;;
8)
add-sstp
;;
9)
del-sstp
;;
10)
cek-sstp
;;
11)
renew-sstp
;;
xx)
menu
;;
*)
echo "    Please Enter An Correct Number"
;;
esac
