#!/bin/bash
read -p "Masukan Email Akun Github Nya: " email
git config --global user.email "$email"
read -p "Masukan Username Github Nya: " user
git config --global user.name "$user"
git init 
git add *
git commit -m "master"

read -p "Masukan Link Github Mu: " link
git remote add origin $link
git push -u origin master
