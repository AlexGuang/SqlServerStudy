select deptno from emp;
--14 �м�¼������3��
select distinct deptno from emp;
--distinct deptno����˵��ظ���deptno
select distinct comm from emp;
--distinct Ҳ���Թ��˵��ظ���null,����˵����ж��null,ֻ��һ�����
select distinct comm, deptno from emp;
--distinct ��comm��deptno����������й���
select deptno, distinct comm from emp;
--error, �߼����г�ͻ