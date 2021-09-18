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
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
tls="$(cat ~/log-install.txt | grep -w "Vless TLS" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vless None TLS" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
		read -rp "User: " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/v2ray/vless.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#tls$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/v2ray/vless.json
sed -i '/#none$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/v2ray/vnone.json
read -p "SNI/Bug Host: " bug
vlesslink1="vless://${uuid}@${bug}:$tls?path=/MailStores&security=tls&encryption=none&type=ws&host=${domain}#${user}"
vlesslink2="vless://${uuid}@${bug}:$none?path=/MailStores&encryption=none&type=ws&host=${domain}#${user}"
systemctl restart v2ray@vless
systemctl restart v2ray@vnone
clear
echo -e "Successfully Creating Premium Account"
echo -e "V2ray/Vless Account Information"
echo -e "━━━━━━━━━[-V2RAY/VLESS-]━━━━━━━━━━"
echo -e "Remarks        : ${user}"
echo -e "ISP            : $(curl -s ipinfo.io/org | cut -d " " -f 2-10 )"
echo -e "City           : $(curl -s ipinfo.io/city )"
echo -e "Domain         : ${domain}"
echo -e "Port TLS       : $tls"
echo -e "Port None TLS  : $none"
echo -e "Id             : ${uuid}"
echo -e "Encryption     : none"
echo -e "Network        : ws"
echo -e "Path           : /MailStores"
echo -e "SNI/Bug Host   : ${bug}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Link TLS       : ${vlesslink1}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Link None TLS  : ${vlesslink2}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Expired On     : $exp"
