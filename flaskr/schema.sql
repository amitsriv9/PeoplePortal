show databases;

create database bluedb;
create user 'devuser'@'localhost' identified by 'devuser';
create user 'testuser'@'localhost' identified by 'testuser';

grant all on bluedb.* to 'devuser'@'localhost';
grant select, insert, delete on bluedb.* to 'testuser'@'localhost';

alter user 'testuser'@'localhost' with max_queries_per_hour 60;

show databases;
