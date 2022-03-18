select * from emp;
select  ename from emp;
select ename,* from emp;
--ok,但是在Oracle11G中error * 已经包含了ename,逻辑上有冲突，所以不建议
select ename as"姓名", sal "工资" from emp;
select ename, 15 from emp;--14行
select 15 ;-- 不推荐
select distinct deptno,sal from emp;
--把deptno 和 sal的组合不重复得输出
select distinct comm from emp;
select deptno, distinct comm from emp;--error