select *
		from emp
		where ename like '%A%'
--��ʽ:
------select�ֶεļ��� from  ���� where ĳ���ֶε����� like ƥ�������
-- ƥ�������ͨ������ͨ���
create table student--����һ�����и����ַ��ı��
(
	name varchar(20) null,
	age int
);
 insert into student values('����',88);
 insert into student values('Tom',66);
 insert into student values('a_b',22);
 insert into student values('c%d',44);
 insert into student values ('abc_fe',56);
 insert into student values('haobin', 25);
 insert into student values('HaoBin',88);
 insert into student values('c%',66);
 insert into student values('long''s',100);
 select * from student;
 
 select * from student where name like '%\%%' escape '\';--��name�а�����%�����
 --escape'\'��ʾ��'\'�ַ�����ת���ַ��ı�־��Ҳ����\������ַ�Ϊ��ͨ�ַ���
 -- sql�п��԰������ַ�����ת���ַ���
select * from student where name like '%\_%' escape '\'--��name�к���_�������