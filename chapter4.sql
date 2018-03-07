--�û���
create table users(
       id number(4) primary key,   --����  id
       name nvarchar2(50) not null,      --�û���
       password nvarchar2(50)��          --����
       telephone nvarchar2(15),         --�绰
       username nvarchar2(50),          --����
       isadmin nvarchar2(5)             --�Ƿ��ǹ���Ա
)
--�������ͱ�
create table type(
       id number(4) primary key,
       name nvarchar2(50) not null       --��������
)
--���ر�
create table district(
       id number(4) primary key,
       name nvarchar2(50) not null
)
--�ֵ���
create table street(
       id number(4) primary key,
       name nvarchar2(50) not null,
       district_id number(4)
)
--������Ϣ��
create table house(
       id number(6) primary key,
       title nvarchar2(50),              --����
       description nvarchar2(2000),      --����
       price number(6),                  --�۸�
       pubdate date,                     --����ʱ��
       floorage number(4),               --���
       contact nvarchar2(100),           --��ϵ��
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
