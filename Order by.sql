select* from emp order by sal;--Ĭ���ǰ�����������
select* from emp order by deptno, sal desc ;
--�Ȱ�ǰ������ǰ����ͬ�ģ��ٰ���������
--�Ȱ���deptno�������У� ����deptno��ͬ���ٰ���sal ��������


select *from emp order by deptno desc, sal;
--�Ȱ���deptno�����������deptno��ͬ���ٰ���sal ��������
--��סsal �������ǽ���
--order by a desc, b, c, d desc ֻ��a ����Ӱ�죬�����b,c��Ӱ��