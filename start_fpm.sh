#!/bin/bash
for dir in `ls /home/vagrant/php`
do
	echo "$dir"
	/home/vagrant/php/$dir/sbin/php-fpm
done