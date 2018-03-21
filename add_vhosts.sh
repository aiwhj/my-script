#!/bin/bash
#  $1 是域名前缀 $2 dir
for dir in `ls /home/vagrant/php`
do
	echo "$dir"
	path="/home/vagrant/nginx/conf/conf.d/$1-$dir.conf"
	echo $path
	cp /vagrant/script/conf/vhost.conf $path
	sed -i "s/{doname}/$1-$dir/g" $path
	sed -i "s/{php}/$dir/g" $path
	sed -i "s/{root}/$2/g" $path
done
pid=`cat /home/vagrant/nginx/logs/nginx.pid`
kill -HUP $pid