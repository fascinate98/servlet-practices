show databases;

create database webdb;

create user 'webdb'@'localhost' identified by 'webdb';

grant all privileges on webdb.* to 'webdb'@'localhost';

show tables;

desc emaillist;

insert into emaillist values(null, '·ç', 'ÇÇ' , 'luffy@gmail.com');


select no, first_name, last_name, email from emaillist order by no desc;
