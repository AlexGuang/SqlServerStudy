use scott;--可以切换库
select sal from emp
	group by  deptno;--error, 使用了group by 输出的是部门总信息，而不能输出部门内部单独的信息
select deptno from emp;
select deptno, avg(sal) "部门平均工资"
		from emp
		group by deptno;--输出部门的编号和该部门的平均工资
select deptno, job, AVG(sal)
			from emp
			group by deptno, job--两个单位，以deptno下的Job为最终小组。
			order by AVG(sal);
select mgr,deptno,COUNT(*)"管理人数"
			from emp
			group by mgr,deptno;