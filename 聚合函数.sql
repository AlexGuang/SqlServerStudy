select LOWER(ename) from emp;--���շ��ص���14�У�lower�����ǵ��к���
--���к�����ÿһ�ж�����һ��ֵ��������14�У������к���ָ���Ƕ�14����¼��
--�괦��֮��õ���һ��ֵ��Ϊ����ֵ�����Զ��з���һ��ֵ���ж��к���
select MAX(sal) from emp;
--������max()�Ƕ��к�����ֻ����һ��ֵ
select COUNT(*) from emp;--����emp�����м�¼�ĸ���
select COUNT(deptno) from emp;--����ֵ��14,˵��deptno�ظ��ļ�¼Ҳ��������Ч�ļ�¼
select COUNT(distinct deptno) from emp;--����ֵ��3,ͳ��deptno���ظ��ļ�¼����
select COUNT(comm) from emp;--����ֵ��4,˵��commΪnull�ļ�¼���ᱻ������Ч�ļ�¼
select MAX(sal)"��߹���",MIN(sal)"��͹���",COUNT(*) "������" from emp;
--MAX(),MIN(),COUNT()���ǰ����������귵��һ��ֵ�����к���
select LOWER(ename) from emp;--��ename�����ֶΰ�Сд����� ���к���
select UPPER(ename) from emp;--��ename �����ֶΰ���д��������к���
select MAX(sal), LOWER(name) from emp;--error, ���к����͵��к������ܻ���
