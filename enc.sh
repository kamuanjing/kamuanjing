#!/bin/bash
red="\e[1;31m"
gren="\e[1;32m"
blue="\e[1;34m"
yelow="\e[1;33m"
cyan="\e[1;36m"
white="\e[1;37m"

#install
apt install shc

#comand
clear
echo ""
read -p "  Input Name File :" file
enc=$(shc -r -f $file && rm $file && rm $file.x.c && mv $file.x $file )
read -p "  Click Enter to Continue:" $enc
echo ""
echo -e " Encrypt Success"
echo ""
exit 0
fi