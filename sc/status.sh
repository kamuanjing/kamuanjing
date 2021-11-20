#!/bin/bash                                                                             
red="\e[1;31m" 
green="\e[0;32m" 
NC="\e[0m" 
MYIP=$(wget -qO- ifconfig.me/ip); 

#warna
w="\e[44;1;37m"
n="\e[0;0m"     

echo "Checking VPS" 
IZIN=$( curl http://sc.zxbxns.my.id:81/akses/token | grep $MYIP ) 
if [ $MYIP = $IZIN ]; 
then 
echo -e "${green}Permission Accepted...${NC}" 
else 
echo -e "${red}Permission Denied!${NC}"; 
echo "Only For Premium Users" 
exit 0 
fi
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "$w                    ⇱ STATUS SERVICE ⇲                      $n"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
status="$(systemctl show ssh.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • SSH                : SSH Service Is "$green"Running"$NC""                  
else                                                                                    
echo -e " • SSh                : SSH Service Is "$red"Not Running (Error)"$NC""        
fi
status="$(systemctl show dropbear.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • DropBear           : DropBear Service Is "$green"Running"$NC""                  
else                                                                                    
echo -e " • DropBear           : DropBear Service Is "$red"Not Running (Error)"$NC""        
fi
status="$(systemctl show stunnel4.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Stunnel            : Stunnel Service Is "$green"Running"$NC""                  
else                                                                                    
echo -e " • Stunnel            : Stunnel Service Is "$red"Not Running (Error)"$NC""        
fi 
status="$(systemctl show openvpn.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Openvpn            : Openvpn Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Openvpn            : Openvpn Service Is "$red"Not Running (Error)"$NC""      
fi 
status="$(systemctl show ssh-ws.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " • SSH-WS             : SSH-WS Service Is "$green"Running"$NC""
else 
echo -e " • SSH-WS             : SSH-WS Service Is "$red"Not Running (Error)"$NC""
fi
status="$(systemctl show ovpn-ws.service --no-page)" 
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ] 
then 
echo -e " • OVPN-WS            : OVPN-WS Service Is "$green"Running"$NC"" 
else 
echo -e " • OVPN-WS            : OVPN-WS Service Is "$red"Not Running (Error)"$NC""
fi
status="$(systemctl show ssl-ws.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " • SSL-WS             : SSL-WS Service Is "$green"Running"$NC""
else
echo -e " • SSL-WS             : SSL-WS Service Is "$red"Not Running  (Error)"$NC""
fi
status="$(systemctl show squid.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Squid              : Squid Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Squid              : Squid Service Is "$red"not Running (Error)"$NC""      
fi
status="$(systemctl show nginx.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Nginx              : Nginx Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Nginx              : Nginx Service Is "$red"Not Running (Error)"$NC""      
fi 
status="$(systemctl show wg-quick@wg0 --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Wireguard          : Wireguard Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Wireguard          : Wireguard Service Is "$red"Not Running (Error)"$NC""      
fi 
status="$(systemctl show v2ray.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • V2ray TLS          : V2ray TLS Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • V2ray TLS          : V2ray TLS Service Is "$red"Not Running (Error)"$NC""      
fi                                                                                                                                                                  
status="$(systemctl show v2ray@none.service --no-page)"                                 
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • V2ray Non TLS      : V2ray Non TLS Service Is "$green"Running"$NC""              
else                                                                                    
echo -e " • V2ray Non TLS      : V2ray Non TLS Service Is "$red"Not Running (Error)"$NC""    
fi                                                                                      
status="$(systemctl show v2ray@vless.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Vless TLS          : Vless TLS Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Vless TLS          : Vless TLS Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show v2ray@vnone.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Vless Non TLS      : Vless Non TLS Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Vless Non TLS      : Vless Non TLS Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show trojan --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Trojan             : Trojan Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Trojan             : Trojan Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show trojan-go --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then 
echo -e " • Trojan-Go          : Trojan-Go Service Is "$green"Running"$NC""
else
echo -e " • Trojan-Go          : Trojan-Go Service Is "$red"Not Running (Error)"$NC""
fi
status="$(systemctl show shadowsocks-libev.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Shadowsocks        : Shadowsocks Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Shadowsocks        : Shadowsocks Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show ssrmu --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • ShadowsocksR       : ShadowsocksR Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • ShadowsocksR       : ShadowsocksR Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show accel-ppp.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • SSTP               : SSTP Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • SSTP               : SSTP Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show pptpd.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • PPTP               : PPTP Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • PPTP               : PPTP Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show xl2tpd.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • L2TP               : L2TP Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • L2TP               : L2TP Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show cron.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Cron               : Cron Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Cron               : Cron Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show fail2ban.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " • Fail2Ban           : Fail2Ban Service Is "$green"Running"$NC""                
else                                                                                    
echo -e " • Fail2Ban           : Fail2Ban Service Is "$red"Not Running (Error)"$NC""      
fi
status="$(systemctl show sslh.service --no-page)" 
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=) 
if [ "${status_text}" == "active" ] 
then 
echo -e " • SSLH Multiplexer   : SSLH Multiplexer Service Is "$green"Running"$NC"" 
else 
echo -e " • SSLH Multiplexer   : SSLH Multiplexer Service Is "$red"Not Running (Error)"$NC""
fi
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"                                                                                       
