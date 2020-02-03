#!/bin/bash
echo "apt update -y" > /etc/cron.weekly/update.sh 
chmod u+x /etc/cron.weekly/update.sh
echo "@weekly /etc/cron.weekiy/update.sh > /var/log/update-`date +%Y%m%d`.log 2>&1" | crontab -;
