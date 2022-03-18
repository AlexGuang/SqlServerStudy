select *
		from emp
		where ename like '%A%'
--格式:
------select字段的集合 from  表名 where 某个字段的名字 like 匹配的条件
-- 匹配的条件通常含有通配符
create table student--创建一个含有各种字符的表格
(
	name varchar(20) null,
	age int
);
 insert into student values('张三',88);
 insert into student values('Tom',66);
 insert into student values('a_b',22);
 insert into student values('c%d',44);
 insert into student values ('abc_fe',56);
 insert into student values('haobin', 25);
 insert into student values('HaoBin',88);
 insert into student values('c%',66);
 insert into student values('long''s',100);
 select * from student;
 
 select * from student where name like '%\%%' escape '\';--把name中包含有%的输出
 --escape'\'表示把'\'字符当作转义字符的标志，也就是\后面的字符为普通字符。
 -- sql中可以把任意字符当作转义字符。
select * from student where name like '%\_%' escape '\'--把name中含有_的输出。