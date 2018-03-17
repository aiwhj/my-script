#!/bin/bash
for dir in `ls /home/vagrant/php`
do
	echo $dir
	/home/vagrant/php/$dir/bin/php -m | grep $1
	echo -e "\n"
done