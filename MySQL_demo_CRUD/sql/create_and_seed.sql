drop database DEMO;
create database DEMO;
use DEMO;
create table USER (
	ID		 	int(10) NOT NULL AUTO_INCREMENT, 
	USER_NAME 	varchar(255) NOT NULL, 
	PASSWORD 	varchar(255) NOT NULL, 
	EMAIL		varchar(255) NOT NULL,
	IS_ADMIN	smallint(1) NOT NULL DEFAULT 0,
	UNIQUE		UQ_USER_1 (USER_NAME),
    UNIQUE		UQ_USER_2 (EMAIL),
	PRIMARY KEY(ID)
);

insert into USER (USER_NAME, PASSWORD, EMAIL, IS_ADMIN) values ('Admin', 'password', 'admin@123.com', 1);
insert into USER (USER_NAME, PASSWORD, EMAIL, IS_ADMIN) values ('FooBar', 'password', 'foobar@test.com', 0);
insert into USER (USER_NAME, PASSWORD, EMAIL, IS_ADMIN) values ('BizBaz', 'password', 'bizbaz@test.com', 0);
insert into USER (USER_NAME, PASSWORD, EMAIL, IS_ADMIN) values ('BingBang', 'password', 'bb@test.com', 0);

select * FROM user;