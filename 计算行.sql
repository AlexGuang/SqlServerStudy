select* from emp;
-- * 表示从emp表查询
-- from emp 表示从emp 表查询

select empno, ename from emp;
--把 emp 表的每一条记录的empno 和 ename 输出
select ename, sal from emp;
select sal,ename from emp;
select ename, sal * 12 as"年薪" from emp;
-- as 可以省略， 记住：“年薪”不要写成‘年薪’，也不要写成年薪
select 5 from emp;
--ok的
--输出的行数是emp 表的行数；每行只有一个字段，值是5.这个值并不表示第几个字段,只是一个值而已.
select 5; --ok
			--不推荐
select ename,sal*12 as"年薪", sal "月薪",job from emp;
select ename,sal*12 "年薪", sal "月薪",job from emp;