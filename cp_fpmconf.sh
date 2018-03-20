#!/bin/bash
for dir in `ls /home/vagrant/php`
do
	echo "$dir"
	path="/home/vagrant/php/$dir/etc/php-fpm.conf"
	echo $path
	cp /vagrant/script/conf/php-fpm.conf $path
	sed -i "s/php54/$dir/g" $path
done