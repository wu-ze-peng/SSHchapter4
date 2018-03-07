--用户表
create table users(
       id number(4) primary key,   --主键  id
       name nvarchar2(50) not null,      --用户名
       password nvarchar2(50)，          --密码
       telephone nvarchar2(15),         --电话
       username nvarchar2(50),          --姓名
       isadmin nvarchar2(5)             --是否是管理员
)
--房屋类型表
create table type(
       id number(4) primary key,
       name nvarchar2(50) not null       --类型名称
)
--区县表
create table district(
       id number(4) primary key,
       name nvarchar2(50) not null
)
--街道表
create table street(
       id number(4) primary key,
       name nvarchar2(50) not null,
       district_id number(4)
)
--房屋信息表
create table house(
       id number(6) primary key,
       title nvarchar2(50),              --标题
       description nvarchar2(2000),      --描述
       price number(6),                  --价格
       pubdate date,                     --发布时间
       floorage number(4),               --面积
       contact nvarchar2(100),           --联系人
       user_id number(4),                
       type_id number(4),
       street_id number(4)
);
select * from users;
insert into users values(1,'asd','asdf','13213232334','asdf','2');
insert into users values(3,'asd','asdf','13213232334','asdf','2');
insert into users values(2,'asd','asdf','13213232334','asdf','2');
insert into type values(1,'asd');
insert into type values(2,'asd');
insert into type values(3,'asd');
insert into district values(1,'asd');
insert into district values(2,'asd');
insert into district values(3,'asd');
insert into street values(1,'asd',1);
insert into street values(2,'asd',2);
insert into street values(3,'asd',3);
insert into house values(1,'asd','asfdas',12,sysdate,23.23,'asdf',1,1,1);
insert into house values(2,'asd','asfdas',12,sysdate,23.23,'asdf',2,2,2);
insert into house values(3,'asd','asfdas',12,sysdate,23.23,'asdf',3,3,3);
