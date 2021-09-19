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
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
sshws="$(cat ~/log-install.txt | grep -w "SSH-WS" | cut -d: -f2)"
sslws="$(cat ~/log-install.txt | grep -w "SSL-WS" | cut -d: -f2)"
ovpnws="$(cat ~/log-install.txt | grep -w "OVPN-WS" | cut -d: -f2)"
Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=1
echo Ping Host
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "Successfully Create Trial Account"
echo -e "SSH & OpenVPN Trial Information"
echo -e "Username       : $Login "
echo -e "Password       : $Pass"
echo -e "━━━━━━━━━━━━━━━━━━━━"
echo -e "ISP            : $(curl -s ipinfo.io/org | cut -d " " -f 2-10 )"
echo -e "City           : $(curl -s ipinfo.io/city )"
echo -e "Host           : $domain"
echo -e "━━━━━━━━━━━━━━━━━━━━"
echo -e "OpenSSH        : 22"
echo -e "Dropbear       : 109, 143"
echo -e "SSL/TLS        :$ssl"
echo -e "SSH-WS         :$sshws"
echo -e "SSL-WS         :$sslws"
echo -e "OVPN-WS        :$ovpnws"
echo -e "Port Squid     :$sqd"
echo -e "━━━━━━━━━━━━━━━━━━━━"
echo -e "Link OpenVPN   : http://$domain:81"
echo -e "Badvpn         : 7100-7300"
echo -e "━━━━━━━━━━━━━━━━━━━━"
echo -e "PAYLOAD-WS     : GET / HTTP/1.1[crlf]Host: $domain[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "━━━━━━━━━━━━━━━━━━━━"
echo -e "Expired On     : $exp"

