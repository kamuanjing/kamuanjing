#!/bin/bash
red='\e[1;31m' 
green='\e[0;32m' 
NC='\e[0m' 
w="\e[44;1;37m"
MYIP=$(wget -qO- ifconfig.me/ip); 

# vps info
isp=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 ) 
lokasi=$(curl -s ipinfo.io/country ) 
uptime=$(uptime -p) 
versi=$(cat /home/ver)
source /var/lib/premium-script/ipvps.conf 
if [[ "$IP" = "" ]]; then 
domain=$(cat /etc/v2ray/domain) 
else
domain=$IP
fi
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
echo -e " $w                      ⇱ VPS INFORMASION ⇲                        $NC"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo -e "     • IP VPS        = $MYIP" 
echo -e "     • DOMAIN        = $domain" 
echo -e "     • ISP VPS       = $isp" 
echo -e "     • SERVER VPS    = $lokasi"
echo -e "     • UPTIME SYSTEM = $uptime"
echo -e "     • SCRIPT VERSI  = $versi"
echo -e "" 
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " $w                        ⇱ MENU SERVICE ⇲                         $NC  "
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo -e "    [01] MENU SSH & OPENVPN "
echo -e "    [02] MENU WIREGUARD "
echo -e "    [03] MENU PPTP & L2TP & SSTP "
echo -e "    [04] MENU SHADOWSOCKS & SHADOWSOCKS-R "
echo -e "    [05] MENU V2RAY/VMESS & VLESS "
echo -e "    [06] MENU TROJAN & TROJAN-GO"
echo -e ""
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " $w                         ⇱ MENU SYSTEM ⇲                         $NC " 
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""  
echo -e "    [07] Add Or Change Subdomain Host For VPS $red[add-host]$NC" 
echo -e "    [08] Renew Certificate V2RAY Account $red[certv2ray]$NC"
echo -e "    [09] Change Port Of Some Service $red[change-port]$NC" 
echo -e "    [10] Autobackup Data VPS $red[autobackup]$NC" 
echo -e "    [11] Backup Data VPS $red[backup]$NC" 
echo -e "    [12] Restore Data VPS $red[restore]$NC" 
echo -e "    [13] Webmin Menu $red[wbmn]$NC" 
echo -e "    [14] Check Bandwith Usage $red[vnstat]$NC" 
echo -e "    [15] Limit Bandwith Speed Server $red[limit-speed]$NC" 
echo -e "    [16] Check Usage of VPS Ram $red[ram]$NC" 
echo -e "    [17] View Service Status $red[status]$NC" 
echo -e "    [18] Reboot VPS $red[reboot]$NC" 
echo -e "    [19] Speedtest VPS $red[speedtest]$NC" 
echo -e "    [20] Update The Latest Version Of The Script $red[update]$NC" 
echo -e "    [21] Displaying System Information $red[info]$NC" 
echo -e "    [22] Info Script Auto Install $red[about]$NC" 
echo -e "    [xx] Exit From VPS $red[exit]$NC"
echo -e ""
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"     
echo -e ""
read -p "    [••] Select From Options [1-22 or xx] : " menu
echo -e ""
case $menu in
1)
menu-ssh
;;
2)
menu-wg
;;
3)
menu-vpn
;;
4)
menu-ss-ssr
;;
5)
menu-v2ray
;;
6)
menu-tr
;;
7)
add-host
;;
8)
certv2ray
;;
9)
change-port
;;
10)
autobackup
;;
11)
backup
;;
12)
restore
;;
13)
wbmn
;;
14)
vnstat
;;
15)
limit-speed
;;
16)
ram
;;
17)
status
;;
18)
reboot
;;
19)
speedtest
;;
20)
update
;;
21)
info
;;
22)
about
;;
xx)
exit 0
;;
*)
echo  "    Please Enter An Correct Number"
;;
esac

