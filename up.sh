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
read -p "Masukan Email Github: " email
git config --global user.email "$email"
read -p "Masukan Username Github: " user
git config --global user.name "$user"
echo "$user" >> /home/usergit
read -p "Masukan Link Repository: " repo
echo "$repo" >> /home/repo
read -p "Masukan Token Github: " token
echo "$token" >> /home/tokengit
;;
2)
git init 
read -p "Masukan Nama File: " file
git add $file
read -p "Masukan Nama Branch: " branch
git commit -m "$branch"
sleep 3
clear
link=$(cat /home/repo)
user=$(cat/home/usergit)
token=$(cat /home/tokengit)
git remote add origin $link
git push -u origin $branch
$user
$token
;;
esac
