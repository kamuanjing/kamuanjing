#!/bin/bash
clear 
echo -e "1. Setup Global User Email Dan User Name"
echo -e "2. Upload"
read -p "Maukan Nomor: " gass
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
git commit -m "master"

read -p "Masukan Link Github Mu: " link
git remote add origin $link
git push -u origin master
;;
esac
