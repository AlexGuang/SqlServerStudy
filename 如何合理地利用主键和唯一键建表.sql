create table student4
(
	stu_id int primary key identity,--identity������
	stu_name nvarchar(100) unique not null,
	stu_email nvarchar(100) not null unique,
	stu_address nvarchar(100)
)
drop table student4;--ɾ�����ѧ��4��
create table student
(
	stu_id int primary key identity,
	stu_name nvarchar(100) ,
	stu_sal int check (stu_sal>=1000 and stu_sal <=4000),
	stu_sex nvarchar(100),
	stu_email nvarchar(100) unique
)
insert into student values('����',3888,'��','shjjennan@jj.com');
select* from student;