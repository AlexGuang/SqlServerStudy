select top 5 * from emp;

select * from emp where comm is null;
--null ֻ���Բ��� is ��is not ����
select ename, sal*12 + ISNULL(comm,0) as "������" from emp
--����ʹ����isnull����������
--��һ���β��� �ֶ� ����������β��� ��� Ϊnull ����ڵ�ֵ
-- isnull(comm,0) ���comm��null,�ͷ����㣬���򷵻�0