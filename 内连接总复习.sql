--把工资大于1500的所有员工按部门分组，把部门平均工资大于2000的最高前两个
--部门的编号，部门的名称，部门平均工资的等级输出
select top 2 "A"."deptno" "部门编号","D".dname "部门名称","S".GRADE "部门平均工资等级"
		from
		dept "D"
		join		
		(
			select "E".deptno ,AVG("E".sal)"avg_sal"--有聚合函数返回值输出必须要命名
				from emp "E"
				where "E".sal > 1500
				group by deptno				
		) "A" 
		on "A".deptno = "D".deptno 
		join SALGRADE "S"
		on "A".avg_sal between "S".LOSAL and "S".HISAL
		where "A".avg_sal > 2000
		order by "A".avg_sal desc



	