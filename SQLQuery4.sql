create table stu_info1
(
	stu_id int primary key,
	stu_sal int check(stu_sal>= 1000 and stu_sal <= 10000),
	stu_sex nchar(1) default('��'), --()����ʡ �����ݿ����ַ����������á���������
	stu_name nvarchar(100) unique
)
insert into stu_info1(stu_id, stu_sal) values(1,1039)
insert into stu_info values(3,3999,'Ů')
insert into stu_info1 values(1, 2000,'��','zhangsan')
insert into stu_info1 values(2, 2000,'��','����')