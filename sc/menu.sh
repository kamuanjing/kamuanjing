#!/bin/bash
m="\e[1;31m"
w="\e[41;1;31m"
p="\e[1;37m"
h='\e[0;32m'
n='\E[0m'
b="\e[0;34m"
v="$(cat /home/ver)"
MYIP=$(wget -qO- ifconfig.me/ip); 
echo "Checking VPS" 
IZIN=$( curl http://sc.zxbxns.me:81/akses/token | grep $MYIP ) 
if 
[ $MYIP = $IZIN ]; then 
echo -e "${h}Permission Accepted...${n}" 
else echo -e "${m}Permission Denied!${n}"; 
echo "Only For Premium Users" 
exit 0
fi
clear
echo -e "$b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$w========================$p[-SSH & OpenVPN-]$m========================$n"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[01] $h Create SSH & OpenVPN Account $m[usernew]$n"
echo -e "$m[02] $h Generate SSH & OpenVPN Trial Account $m[trial]$n"
echo -e "$m[03] $h Extending SSH & OpenVPN Account Active Life $m[renew]"
echo -e "$m[04] $h Delete SSH & OpenVPN Account $m[deluser]"
echo -e "$m[05] $h Check User Login SSH & OpenVPN $m[cek]"
echo -e "$m[06] $h Daftar Member SSH & OpenVPN $m[member]"
echo -e "$m[07] $h Delete User Expired SSH & OpenVPN $m[delete]"
echo -e "$m[08] $h Set up Autokill SSH $m[autokill]"
echo -e "$m[09] $h Displays Users Who Do Multi Login SSH $m[ceklim]"
echo -e "$m[10] $h Restart Service Dropbear, Squid3, OpenVPN dan SSH $m[restart]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$w=========================$p[-Wireguard-]$m===========================$n"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[11] $h Create Wireguard Account $m[add-wg]"
echo -e "$m[12] $h Delete Wireguard Account $m[del-wg]"
echo -e "$m[13] $h Check User Login Wireguard $m[cek-wg]"
echo -e "$m[14] $h Extending Wireguard Account Active Life $m[renew-wg]"
echo -e "$m[15] $h Check Wireguard User Interface $m[wg show]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$w=======================$p[-L2TP/PPTP/SSTP-]$m========================$n"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[16] $h Creating L2TP Account $m[add-l2tp]"
echo -e "$m[17] $h Deleting L2TP Account $m[del-l2tp]"
echo -e "$m[18] $h Extending L2TP Account Active Life $m[renew-l2tp]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[19] $h Create Account PPTP $m[add-pptp]"
echo -e "$m[20] $h Delete PPTP Account $m[del-pptp]"
echo -e "$m[21] $h Extending PPTP Account Active Life $m[renew-pptp]"
echo -e "$m[22] $h Check User Login PPTP $m[cek-pptp]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[23] $h Create Account SSTP $m[add-sstp]"
echo -e "$m[24] $h Delete SSTP Account $m[del-sstp]"
echo -e "$m[25] $h Extending SSTP Account Active Life $m[renew-sstp]"
echo -e "$m[26] $h Check User Login SSTP $m[cek-sstp]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$w======================$p[-ShadowsocksR/OBFS-]$m======================$n"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[27] $h Create SSR Account $m[add-ssr]"
echo -e "$m[28] $h Deleting SSR Account $m[del-ssr]"
echo -e "$m[29] $h Extending SSR Account Active Life $m[renew-ssr]"
echo -e "$m[30] $h Show Other SSR Menu $m[ssr]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[31] $h Creating Shadowsocks Account $m[add-ss]"
echo -e "$m[32] $h Delete Shadowsocks Account $m[del-ss]"
echo -e "$m[33] $h Extending Shadowsocks Account Active Life $m[renew-ss]"
echo -e "$m[34] $h Check User Login Shadowsocks $m[cek-ss]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$w=========================$p[-VMESS/VLESS-]$m=========================$n"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[35] $h Create V2RAY Vmess Websocket Account $m[add-ws]"
echo -e "$m[36] $h Deleting V2RAY Vmess Websocket Account $m[del-ws]"
echo -e "$m[37] $h Extending Vmess Account Active Life $m[renew-ws]"
echo -e "$m[38] $h Check User Login V2RAY $m[cek-ws]"
echo -e "$m[39] $h Renew Certificate V2RAY Account $m[certv2ray]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[40] $h Create V2RAY Vless Websocket Account $m[add-vless]"
echo -e "$m[41] $h Deleting V2RAY Vless Websocket Account $m[del-vless]"
echo -e "$m[42] $h Extending Vless Account Active Life $m[renew-vless]"
echo -e "$m[43] $h Check User Login V2RAY $m[cek-vless]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$w=======================$p[-Trojan/TrojanGo-]$m=======================$n"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[44] $h Create Trojan Account $m[add-tr]"
echo -e "$m[45] $h Deleting Trojan Account $m[del-tr]"
echo -e "$m[46] $h Extending Trojan Account Active Life $m[renew-tr]"
echo -e "$m[47] $h Check User Login Trojan $m[cek-tr]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[48] $h Create Trojan-Go Account $m[add-trgo]"
echo -e "$m[49] $h Deleting Trojan-Go Account $m [del-trgo]"
echo -e "$m[50] $h Extending Trojan-Go Account Active Life $m[renew-trgo]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$w===========================$p[-SYSTEM-]$m============================$n"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$m[51] $h Add Or Change Subdomain Host For VPS $m[add-host]"
echo -e "$m[52] $h Change Port Of Some Service $m[change-port]"
echo -e "$m[53] $h Autobackup Data VPS $m[autobackup]"
echo -e "$m[54] $h Backup Data VPS $m[backup]"
echo -e "$m[55] $h Restore Data VPS $m[restore]"
echo -e "$m[56] $h Webmin Menu $m[wbmn]"
echo -e "$m[57] $h Check Bandwith Usage $m[vnstat]"
echo -e "$m[58] $h Limit Bandwith Speed Server $m[limit-speed]"
echo -e "$m[59] $h Check Usage of VPS Ram $m[ram]"
echo -e "$m[60] $h View Service Status $m[status]"
echo -e "$m[61] $h Reboot VPS $m[reboot]"
echo -e "$m[62] $h Speedtest VPS $m[speedtest]"
echo -e "$m[63] $h Update The Latest Version Of The Script $m[update]"
echo -e "$m[64] $h Displaying System Information $m[info]"
echo -e "$m[65] $h Info Script Auto Install $m[about]"
echo -e "$m[xx] $h Exit From VPS $m[exit]"
echo -e "      $b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$w=============================$p[ $v ]$m=============================$n"
echo -e "$b━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$h"
read -p "•] Select From Options [1-65 or xx] : " menu
echo -e "\e[1;0m"
case $menu in
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
hapus
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
11)
add-wg
;;
12)
del-wg
;;
13)
cek-wg
;;
14)
renew-wg
;;
15)
wg show
;;
16)
add-l2tp
;;
17)
del-l2tp
;;
18)
renew-l2tp
;;
19)
add-pptp
;;
20)
del-pptp
;;
21)
renew-pptp
;;
22)
cek-pptp
;;
23)
add-sstp
;;
24)
del-sstp
;;
25)
renew-sstp
;;
26)
cek-sstp
;;
27)
add-ssr
;;
28)
del-ssr
;;
29)
renew-ssr
;;
30)
ssr
;;
31)
add-ss
;;
32)
del-ss
;;
33)
renew-ss
;;
34)
cek-ss
;;
35)
add-ws
;;
36)
del-ws
;;
37)
renew-ws
;;
38)
cek-ws
;;
39)
certv2ray
;;
40)
add-vless
;;
41)
del-vless
;;
42)
renew-vless
;;
43)
cek-vless
;;
44)
add-tr
;;
45)
del-tr
;;
46)
renew-tr
;;
47)
cek-tr
;;
48)
add-trgo
;;
49)
del-trgo
;;
50)
renew-trgo
;;
51)
add-host
;;
52)
change-port
;;
53)
autobackup
;;
54)
backup
;;
55)
restore
;;
56)
wbmn
;;
57)
vnstat
;;
58)
limit-speed
;;
59)
ram
;;
60)
status
;;
61)
reboot
;;
62)
speedtest
;;
63)
update
;;
64)
info
;;
65)
about
;;
xx)
exit
;;
*)
clear
menu
;;
esac
