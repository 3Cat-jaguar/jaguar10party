#!/bin/bash

apt update
service mysql start
mysql -e "create database if not exists wordpress;\
	create user if not exists 'ylee'@'localhost' identified by 'password';\
	grant all privileges on *.* to 'ylee'@'localhost' with grant option;\
	flush privileges;"
service nginx start
service mysql reload
service php7.3-fpm start

bash
