use scott;--�����л���
select sal from emp
	group by  deptno;--error, ʹ����group by ������ǲ�������Ϣ����������������ڲ���������Ϣ
select deptno from emp;
select deptno, avg(sal) "����ƽ������"
		from emp
		group by deptno;--������ŵı�ź͸ò��ŵ�ƽ������
select deptno, job, AVG(sal)
			from emp
			group by deptno, job--������λ����deptno�µ�JobΪ����С�顣
			order by AVG(sal);
select mgr,deptno,COUNT(*)"��������"
			from emp
			group by mgr,deptno;