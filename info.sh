#!/bin/bash
isp=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
city=$(curl -s ipinfo.io/region )
ip=$(curl -s ipinfo.io/ip )
uptime=$(uptime -p)
ram=$( free -m | awk 'NR==2 {print $3}' )
hostname=$(cat /etc/hostname)
# warna
w="\e[44;1;37m"
n="\e[0;0m"
m="\e[1;31m"
# domain
source /var/lib/premium-script/ipvps.conf 
if [[ "$IP" = "" ]]; then 
domain=$(cat /etc/v2ray/domain) 
else
domain=$IP     
fi
clear
echo -e "      Welcome To Server VPS $m$hostname$n"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " $w          ⇱ VPS INFORMASION ⇲           $n"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " • IP VPS        = $ip"
echo -e " • DOMAIN        = $domain"
echo -e " • ISP VPS       = $isp"
echo -e " • SERVER VPS    = $city"
echo -e " • UPTIME SYSTEM = $uptime"
echo -e " • RAM USED      = $ram Mib"
echo -e " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "  Type$m menu$n To Display Commands List"
echo -e ""
