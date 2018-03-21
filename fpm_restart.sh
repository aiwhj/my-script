#!/bin/bash
#  $1 是域名前缀 $2 dir
for dir in `ls /home/vagrant/php`
do
	echo "/home/vagrant/php/$dir/var/run/php-fpm.pid"
	pid=`cat /home/vagrant/php/$dir/var/run/php-fpm.pid`
	echo "$pid"
	kill -USR2 $pid
done
