create table banji
(
	banji_id int primary key,
	banji_num int not null,
	banji_name nvarchar(100)	
)
--�༶
create table teacher
(	
	teacher_id int primary key,
	teacher_name nvarchar(100)
)
--��ʦ
create table banji_teacher_mapping--map��ӳ�����˼
(
	banji_id int  constraint fk_banji_id foreign key references banji(banji_id),
	teacher_id int constraint fk_teacher_id  foreign key references teacher(teacher_id),
	kecheng nvarchar(100),
	constraint pk_banji_id_teacher_id primary key (banji_id, teacher_id,kecheng)
)
drop table banji_teacher_mapping