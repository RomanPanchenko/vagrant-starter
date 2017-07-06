#!/usr/bin/env bash

# Variables
DBHOST=10.10.10.10
DBNAME=db
DBUSER=root
DBPASSWD=password

echo -e "\nInstalling linux updates..."
apt-get update
echo -e "    done\n"

echo -e "\nInstalling Midnight Commander..."
apt-get -y install mc
echo -e "    done\n"

echo -e "\nInstalling MySQL specific packages and settings..." 
debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"
apt-get -y install mysql-server
echo -e "    done\n"

echo -e "\nSetting up our MySQL user and db..."
mysql -uroot -p$DBPASSWD -e "CREATE DATABASE $DBNAME"
mysql -uroot -p$DBPASSWD -e "grant all privileges on $DBNAME.* to '$DBUSER'@'localhost' identified by '$DBPASSWD'"
echo -e "    done\n"

echo -e "\nInstalling NodeJS and NPM..."
apt-get -y install curl
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install -y nodejs
echo -e "    done\n"

echo -e "\nInstalling javascript components..."
npm install -g gulp bower
echo -e "    done\n"

echo -e "\nInstalling Git..."
apt-get -y install git
echo -e "    done\n"

