select * from emp;
select  ename from emp;
select ename,* from emp;
--ok,������Oracle11G��error * �Ѿ�������ename,�߼����г�ͻ�����Բ�����
select ename as"����", sal "����" from emp;
select ename, 15 from emp;--14��
select 15 ;-- ���Ƽ�
select distinct deptno,sal from emp;
--��deptno �� sal����ϲ��ظ������
select distinct comm from emp;
select deptno, distinct comm from emp;--error