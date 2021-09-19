#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
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
uuid=$(cat /etc/trojan/uuid.txt)
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
tr="$(netstat -tunlp | grep -i trojan | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"     
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
		read -rp "Password: " -e user
		user_EXISTS=$(grep -w $user /etc/trojan/akun.conf | wc -l)
		if [[ ${user_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
read -p "Expired (days): " masaaktif
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan/akun.conf
systemctl restart trojan
trojanlink="trojan://${uuid}@${domain}:${tr}"
clear
echo -e "Successfully Creating Premium Account"
echo -e "Trojan Account Information"
echo -e "━━━━━━[-TROJAN-]━━━━━━━"
echo -e "Remarks        : ${user}"
echo -e "Key            : ${user}"
echo -e "ISP            : $(curl -s ipinfo.io/org | cut -d " " -f 2-10 )"
echo -e "City           : $(curl -s ipinfo.io/city )"
echo -e "Host/IP        : ${domain}"
echo -e "Port           : ${tr}"
echo -e "━━━━━━━━━━━━━━━━━━━━"
echo -e "Trojan Link    : ${trojanlink}"
echo -e "━━━━━━━━━━━━━━━━━━━━"
echo -e "Expired On     : $exp"
