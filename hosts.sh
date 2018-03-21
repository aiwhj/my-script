#!/bin/bash
arr=("php54" "php54-debug" "php54-zts" "php55" "php55-debug" "php55-zts" "php56" "php56-debug" "php56-zts" "php70" "php70-debug" "php70-zts" "php71" "php71-debug" "php71-zts" )
  
echo "所有的内容如下："${arr[@]} 
  
  
echo "数组的长度："${#arr[*]} 
  
for var in ${arr[@]} 
do
   echo "打印的内容："$var 
   echo  192.168.33.10   $1-$var.vagrant.com >> /etc/hosts
done
