#!/bin/bash

# hometask 3 provision script
# Installing Atlassian Confluence server
# Instdlling MySQL DB  (ver.5.7)
#	user: root  password:'123456',
#	DBname: "CONFLUENCE"

# jre installing
#apt-get update
#apt-get -y install default-jre

# making .bin file executable
 chmod u+x /vagrant/atlassian-confluence-7.3.1-x64.bin

#running .bin
/vagrant/atlassian-confluence-7.3.1-x64.bin -q -varfile response.varfile

# installing mysql
yum -y localinstall https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
yum -y install mysql-community-server
systemctl start mysqld
systemctl enable mysqld

