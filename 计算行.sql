select* from emp;
-- * ��ʾ��emp���ѯ
-- from emp ��ʾ��emp ���ѯ

select empno, ename from emp;
--�� emp ���ÿһ����¼��empno �� ename ���
select ename, sal from emp;
select sal,ename from emp;
select ename, sal * 12 as"��н" from emp;
-- as ����ʡ�ԣ� ��ס������н����Ҫд�ɡ���н����Ҳ��Ҫд����н
select 5 from emp;
--ok��
--�����������emp ���������ÿ��ֻ��һ���ֶΣ�ֵ��5.���ֵ������ʾ�ڼ����ֶ�,ֻ��һ��ֵ����.
select 5; --ok
			--���Ƽ�
select ename,sal*12 as"��н", sal "��н",job from emp;
select ename,sal*12 "��н", sal "��н",job from emp;