#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
debconf-set-selections <<< "mysql-server mysql-server/root_password password 123456"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 123456"

apt-key adv --keyserver pgp.mit.edu --recv-keys 5072E1F5
cat <<- EOF > /etc/apt/sources.list.d/mysql.list
deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7
EOF
apt-get update

apt-get install -y mysql-server-5.7

mysql -h localhost -uroot -p'123456' -e 'CREATE DATABASE CONFLUENCE';
