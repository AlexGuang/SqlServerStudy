--1. 求出每个员工的姓名，部门编号，薪水和薪水的等级
select "E".ename "员工姓名","E".deptno "部门编号", "E".sal "薪水"
				,"S".GRADE " 薪水等级"
			from emp "E"
			join SALGRADE "S"
			on "E".sal between "S".LOSAL AND "S".HISAL
--2.查找每个部门的编号 该部门所有员工的平均工资，平均工资的等级
select "E".deptno, AVG("E".sal),"S".GRADE
			from emp "E"
			group by "E".deptno
			join SALGRADE "S"
			on AVG("E".sal) between "S".LOSAL and "S".HISAL
			--error,聚合不能出现在on的子句中
--新尝试↓

select "N".deptno "部门编号", "N".avg_sal "部门平均工资","S".GRADE "部门平均工资等级"
		from (
		select "E".deptno, AVG("E".sal) as "avg_sal"
				from emp "E"
				group by "E".deptno
		 
		)  AS "N"---是的，我做出来了，可以把一个内表重新命名为N
		join SALGRADE "S"
		on "N".avg_sal between "S".LOSAL and "S".HISAL--也可以把from和join的两个表互换
--等价于
select "T".deptno "部门编号","T".avg_sal "部门平均工资","S".GRADE "部门平均工资等级"

	from SALGRADE "S"
	join(
		select "E".deptno as "deptno", AVG("E".sal) "avg_sal"
				from emp "E"
				group by "E".deptno
	) "T"
	on "T".avg_sal between "S".LOSAL and "S".HISAL
--4.求出所有的领导信息
select distinct *
   from emp "E"
   join (select mgr  "L"from emp) "T"
   on "E".EMPNO = "T".L
--5.求出平均薪水最高的部门的编号和部门的平均工资
select top 1 "E".deptno "部门编号", AVG("E".sal) "AVG_SAL"
		from emp "E"
		group by "E".deptno
		order by "AVG_SAL" desc
--不用top 代码
select "E".deptno,AVG("E".sal) "avg_sal"
		from emp "E"
		group by "E".deptno
		where avg_sal in MAX( select AVG(sal)from emp)
--修正版， 当存在聚合函数时比较麻烦，每一次使用都要从新select
select *--"E".deptno,"E".avg_sal
		from (
		select "E".deptno,AVG("E".sal) "avg_sal"
			from emp "E"
			group by "E".deptno
		) "E"
		
		where "E".avg_sal in( select MAX("C".avg_sal)from
							(select deptno, AVG(sal) "avg_sal"
									from emp
									group by deptno
							) "C")
		
		select AVG(sal) "avg_sal" from emp
													group by deptno) )"max_avg_sal"from emp
													group by "T".avg_sal)
		
--6.把工资大于所有员工中工资最低的前3个人的姓名，工资，部门编号，部门名称，工资等级 输出
select top ("T".SUM -3) "T".ename, "T".sal, "T".deptno, "D".dname,"S".GRADE
			from 
			(select "E".sal, "E".ename,"E".deptno,"N".SUM 
				from 
			(select COUNT(*) "SUM"
				from emp)"N", emp "E"
			 ) "T"
			join dept "D"
			on "T".deptno =  "D".deptno
			join SALGRADE "S"
			on "T".sal between "S".LOSAL and "S".HISAL
--修正
select TOP 3 "T".ename "员工姓名","D".dname "部门名称","T".sal "员工工资", "S".GRADE "员工工资等级"
	from(
		select *
			from emp
			where sal > (select MIN(sal)from emp)
		) "T"
		join dept "D"
		on "D".deptno = "T".deptno
		join SALGRADE "S"
		on "T".sal between "S".LOSAL and "S".HISAL
		order by "T".sal
		
--经典的算法，把聚合函数当作返回值即时使用
select*
	from(
	select*
		from emp
		where sal > (select MIN(sal) from emp)--用聚合函数取出最小值判断
	) "T"----当使用代码块临时表代替一个表时，必须在末尾对临时表命名