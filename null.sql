select * from emp;
select * from emp 
		where comm is not null--�������Ϊ�յ���Ϣ
--null ���Բ��� is ��is not
select * from emp
		where comm is null;--�������Ϊ�յ���Ϣ
--���null�ǲ�һ���ģ�null ��ʾ��ֵ��û��ֵ�����ʾһ��ȷ����ֵ
--null���ܲ����������㣺<> != =
--null ���Բ����������㣺 is  not       is
--�κ��������ݶ�����Ϊnull
create table t1
( name nvarchar(20), cnt int, riqi date)
insert into t1 values(null,null,null);
---�κ�������null������ѧ����Ľ����ԶΪnull