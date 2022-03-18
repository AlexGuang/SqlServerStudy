select emp.ename, dept.dname from emp, dept
		where emp.deptno = dept.deptno;
select "E" emp.ename,"D" dept.dname 
		from "E" emp
		join "D" dept
		on emp.deptno = dept.deptno;
		
-把工资大于2000的员工的姓名和部门的名称输出		
select "E".ename "员工姓名", "D".dname "部门名称","E".sal "工资"
		from emp "E",dept "D"
		where "E".deptno = "D".deptno and "E".sal>2000;
select "E".ename "员工姓名","D".dname "部门名称","E".deptno "部门编号","E".sal "工资"
				from emp "E"								
				join dept "D"
				on "E".deptno = "D".deptno
				where "E".sal> 2000;
				
				
--把工资大于2000的员工的姓名和部门的名称输出	再加上工资等级
--思路:先把emp和dept两个表join,再把两个表结合的大表和SALGRADE进行 join
--最后再用where 过滤条件
--sql99
select "E".ename "员工姓名","D".dname "部门名称","E".job "职位","E".sal "员工工资","S".GRADE "工资等级"
				from emp "E"
				join dept "D"
				on "E".deptno = "D".deptno
				join SALGRADE "S"
				on "E".sal<= "S".HISAL and "E".sal >= "S".LOSAL
				where "E".sal > 2000;
				
--sql92 把所有的过滤条件写进where
select emp.ename "员工姓名",dept.dname "部门名称",emp.job "职位",
					emp.sal "工资",SALGRADE.GRADE "工资等级"
					from emp,dept,SALGRADE
					where emp.sal > 2000 and emp.deptno = dept.deptno 
					and emp.sal >= SALGRADE.LOSAL and emp.sal <= SALGRADE.HISAL;
--查找每个部门的编号，该部门所有员工的平均工资，平均工资等级
select "D".deptno "部门编号", "D".dname "部门名称",
		AVG("E".sal) "部门平均工资","S".GRADE "部门平均工资等级"
		from emp "E"				
		join dept "D"
		on "E".deptno = "D".deptno
		join SALGRADE "S"
		on AVG("E".sal)>= "S".losal and AVG("E".sal )<= "S".hisal
		
		
--求出emp表中所有领导的姓名
select distinct "E".ename "领导姓名","E".sal "领导工资"
		from emp "E"		
		join emp "EI"
		on "E".EMPNO = "EI".mgr
		order by "E".sal desc
--求出平均薪水最高的部门的编号和部门的平均工资
select top 1 "E".deptno "部门编号",avg("E".sal)"最高的平均工资"
			from emp "E"
			group by "E".deptno;
			
			
--把工资大于所有员工中工资最低的前三个人的姓名，工资输出
select top (count(*)-3) "E".ename,"E".sal
           from emp "E"
           order by "E".sal desc
--输出工资最高的前三名的每个员工的姓名 工资,工资等级,部门名称
select top 3 "E".ename "员工姓名","E".sal"员工工资", "S".GRADE "工资等级","D".dname "部门名称"
		from emp "E"
		join SALGRADE "S"
		on "E".sal>= "S".LOSAL AND "E".sal<="S".HISAL
		join dept "D"
		on "E".deptno = "D".deptno
		--where "E".ename not like '%o%'
		order by E.sal desc
           
		

				