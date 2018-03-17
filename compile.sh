#!/bin/bash
cd  /vagrant/$1
for dir in `ls /home/vagrant/php`
do
	make clean
	/home/vagrant/php/$dir/bin/phpize
	./configure --with-php-config=/home/vagrant/php/$dir/bin/php-config
	make -j 4 && sudo make install
done