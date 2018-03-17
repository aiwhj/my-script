#!/bin/bash
for dir in `ls /home/vagrant/php`
do
	/home/vagrant/php/$dir/bin/pecl install $1
done