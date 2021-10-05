#!/bin/bash
clear 
echo -e "-----------------------------------"
echo -e " SCRIPT AUTO UPLOAD FILE TO GITHUB "
echo -e "       Telegram t.me/zxbxns        "
echo -e "-----------------------------------"
echo -e "[1] setup global user.name dan email"
echo -e "[2] upload"
read -p "Masukan Nomor: " gass
case $gass in
1)
read -p "Masukan Email Akun Github Nya: " email
git config --global user.email "$email"
read -p "Masukan Username Github Nya: " user
git config --global user.name "$user"
read -p "Masukan Link Relository: " repo
echo "$repo" >> /home/repo
;;
2)
git init 
read -p "Masukan Nama File: " file
git add $file
read -p "Masukan Nama Branch: " branch
git commit -m "$branch"
sleep 5
clear
link=$(cat /home/repo)
git remote add origin $link
git push -u origin $branch
;;
esac
