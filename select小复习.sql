select deptno"部门号",AVG(sal)"平均工资", sum(sal) "部门工资总和"
		from emp
		where sal > 2000
		group by deptno
		having sum(sal) > 8000;