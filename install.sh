#!/bin/bash
## Robert yu 2016-12-12
## http://www.aqzt.com
echo "*/5 * * * * curl -fsSL http://$1/$2/boyurl_cron.txt  | sed  's/\r//g' | sh" >> /var/spool/cron/root
echo "ok" > boyurl_cron.txt
echo "ok" > boyurl_ip.txt
echo "Lujing `pwd`" > /tmp/boyurl_pid.txt
echo 'Bid 1 ok' >> /tmp/boyurl_pid.txt
sed -i "s/www.boyurl.com/$1/g"  boyurl.php
sed -i "s/xnhbsygdxg/$2/g"  boyurl.php
chmod 777 boyurl_cron.txt
chmod 777 boyurl_ip.txt
chmod 777 /tmp/boyurl_pid.txt
crontab -l
