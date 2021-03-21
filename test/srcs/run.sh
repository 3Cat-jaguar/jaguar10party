#!/bin/bash

apt update
service mysql start
mysql -e "create database if not exists wordpress;\
	create user 'ylee'@'localhost' identified by 'password';\
	grant all privileges on *.* to 'ylee'@'localhost' with grant option;\
	flush privileges;"
service nginx start
service mysql start
service php7.3-fpm start

bash
