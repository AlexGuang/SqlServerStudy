select deptno"���ź�",AVG(sal)"ƽ������", sum(sal) "���Ź����ܺ�"
		from emp
		where sal > 2000
		group by deptno
		having sum(sal) > 8000;