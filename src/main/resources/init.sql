

create database `security`
  DEFAULT CHARACTER SET utf8;

CREATE TABLE user
(
    id int(11) PRIMARY KEY,
    username varchar(32),
    password varchar(255),
    enabled tinyint(1),
    locked tinyint(1)
);
INSERT INTO user (id,username,password,enabled,locked) VALUES (1,"root","$2a$10$RMuFXGQ5AtH4wOvkUqyvuecpqUSeoxZYqilXzbz50dceRsga.Wyiq",1,0);
INSERT INTO user (id,username,password,enabled,locked) VALUES (2,"admin","$2a$10$RMuFXGQ5AtH4wOvkUqyvuecpqUSeoxZYqilXzbz50dceRsga.Wyiq",1,0);
INSERT INTO user (id,username,password,enabled,locked) VALUES (3,"sang","$2a$10$RMuFXGQ5AtH4wOvkUqyvuecpqUSeoxZYqilXzbz50dceRsga.Wyiq",1,0);



CREATE TABLE role
(
    id int(11) PRIMARY KEY,
    name varchar(32),
    nameZh varchar(32)
);
INSERT INTO role (id,name,nameZh) VALUES (1,"ROLE_dba","数据库管理员");
INSERT INTO role (id,name,nameZh) VALUES (2,"ROLE_admin","系统管理员");
INSERT INTO role (id,name,nameZh) VALUES (3,"ROLE_user","用户");



-- auto-generated definition
create table user_role
(
  id  int not null
    primary key,
  uid int null,
  rid int null
);

INSERT INTO user_role(id, uid, rid) VALUES (1,1,1);
INSERT INTO user_role(id, uid, rid) VALUES (2,1,2);
INSERT INTO user_role(id, uid, rid) VALUES (3,2,2);
INSERT INTO user_role(id, uid, rid) VALUES (4,3,3);


CREATE TABLE `menu`(
id int PRIMARY KEY ,
pattern VARCHAR
);
INSERT INTO menu(id, pattern) VALUES (1,"/db/**");
INSERT INTO menu(id, pattern) VALUES (2,"/admin/**");
INSERT INTO menu(id, pattern) VALUES (3,"/user/**");

CREATE TABLE menu_role(
id INT PRIMARY KEY ,
mid int ,
rid int
);
INSERT INTO menu_role(id, mid, rid) VALUES (1,1,1);
INSERT INTO menu_role(id, mid, rid) VALUES (2,2,2);
INSERT INTO menu_role(id, mid, rid) VALUES (3,3,3);
