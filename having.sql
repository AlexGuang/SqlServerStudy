--输出部门平均工资大于1500的部门的部门编号 部门的平均工资
select deptno, AVG(sal) "平均工资"
		from emp
		group by deptno
		having AVG(sal) > 1500;
--输出部门平均工资大于2500的部门的部门编号 部门的平均工资
select deptno, AVG(sal) "平均工资"
		from emp
		group by deptno
		having AVG(sal) > 2500;
----having 用来过滤 分组后的数据，因此通常会先使用group by.
--把姓名不包含A的所有的员工按部门编号分组
select deptno "部门编号",COUNT(*) "名字不含a的员工数量"
		from emp
		where ename not like ('%a%')
		group by deptno
		having AVG(sal)>2000;
select deptno, sal from emp
where deptno =10;
--总计: 所有select的参数的顺序是不允许变化的，否则编译时出错