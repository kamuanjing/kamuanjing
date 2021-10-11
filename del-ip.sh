#!/bin/bash
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/home/listip.txt")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		clear
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo -e "  Select the existing client you want to remove"
	echo -e "  Press CTRL+C to return"
	echo -e "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	echo -e "     No |  User  |      Ip     |  Exp"
        echo -e "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        grep -E "^### " "/home/listip.txt" | cut -d ' ' -f 2-7 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
user=$(grep -E "^### " "/home/listip.txt" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
ip=$(grep -E "^### " "/home/listip.txt" | cut -d ' ' -f 5 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/home/listip.txt" | cut -d ' ' -f 7 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^### | $user | $ip | $exp/d" /home/listip.txt
sed -i "/^$ip/d" /home/vps/public_html/akses/token
clear
echo " Your IP Has Been Deleted"
echo " ━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo " Ip         : $ip"
echo " Name       : $user"
echo " Expired On : $exp"
echo " ━━━━━━━━━━━━━━━━━━━━━━━━━━"
