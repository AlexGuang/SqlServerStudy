select deptno from emp;
--14 行记录，不是3行
select distinct deptno from emp;
--distinct deptno会过滤掉重复的deptno
select distinct comm from emp;
--distinct 也可以过滤掉重复的null,或者说如果有多个null,只把一个输出
select distinct comm, deptno from emp;
--distinct 把comm和deptno的组合来进行过滤
select deptno, distinct comm from emp;
--error, 逻辑上有冲突