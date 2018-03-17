#!/bin/bash
for dir in `ls /home/vagrant/php`
do
	/home/vagrant/php/$dir/bin/php -i | grep php.ini |tail -1|cut  -d " " -f 5
done