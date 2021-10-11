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
echo -e " $w                       ⇱ SSH & OPENVPN ⇲                         $NC"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo -e "    [01] Create SSH & OpenVPN Account $red[usernew]$NC" 
echo -e "    [02] Generate SSH & OpenVPN Trial Account $red[trial]$NC" 
echo -e "    [03] Extending SSH & OpenVPN Account Active Life $red[renew]$NC" 
echo -e "    [04] Delete SSH & OpenVPN Account $red[deluser]$NC"
echo -e "    [05] Check User Login SSH & OpenVPN $red[cek]$NC"
echo -e "    [06] Daftar Member SSH & OpenVPN $red[member]$NC" 
echo -e "    [07] Delete User Expired SSH & OpenVPN $red[delete]$NC" 
echo -e "    [08] Set up Autokill SSH $red[autokill]$NC"
echo -e "    [09] Displays Users Who Do Multi Login SSH $red[ceklim]$NC"
echo -e "    [10] Restart Service Dropbear, Squid3, OpenVPN dan SSH $red[restart]$NC"
echo -e "    [xx] Back To Menu $red[menu]$NC"
echo -e ""
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
read -p "    [••] Please Input Number [1-10 or xx] : "  ssh
echo -e ""
case $ssh in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
deluser
;;
5)
cek
;;
6)
member
;;
7)
delete
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
xx)
menu
;;
*)
echo "    Please Enter An Correct Number"
;;
esac
