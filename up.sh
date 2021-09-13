#!/bin/bash
clear 
echo -e "1. setup global user.name dan email"
echo -e "2. upload"
read -p "Masukan Nomor" gass
case $gass in
1)
read -p "Masukan Email Akun Github Nya: " email
git config --global user.email "$email"
read -p "Masukan Username Github Nya: " user
git config --global user.name "$user"
;;
2)
git init 
git add *
read -p "Masukan Nama Branch: " branch1
git commit -m "$branch1"
sleep 5
clear
read -p "Masukan Link Github Mu: " link
git remote add origin $link
read -p "Masukan Nama Branch: " branch2
git push -u origin $branch2
;;
esac
