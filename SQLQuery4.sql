create table stu_info1
(
	stu_id int primary key,
	stu_sal int check(stu_sal>= 1000 and stu_sal <= 10000),
	stu_sex nchar(1) default('男'), --()可以省 再数据库中字符串必须是用’‘括起来
	stu_name nvarchar(100) unique
)
insert into stu_info1(stu_id, stu_sal) values(1,1039)
insert into stu_info values(3,3999,'女')
insert into stu_info1 values(1, 2000,'男','zhangsan')
insert into stu_info1 values(2, 2000,'男','李四')