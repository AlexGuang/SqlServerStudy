select * from emp;
select top 2 *from emp;--�Ѷ������������¼ѡ��
select top 15 percent * from emp; 
-- �Ѷ�����ߵ�15%������ѡ�񣬲����������1,2.1=3
select top 5 ename, sal  
		from emp 
		where sal between 1500 and 7000 
		order by sal desc; 
--�ѹ��ʴ�1500��7000֮���ǰ����˰����������Ĭ��������