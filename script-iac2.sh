#!/bin/bash

echo "Atualização de servidor"

apt-get update 
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Downloads de arquivos do servidor"

cd /tmp
wget https://github.com/Giovannimoraess/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
