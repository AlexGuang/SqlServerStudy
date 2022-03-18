select * from emp;
select top 2 *from emp;--把顶部最高两个记录选择
select top 15 percent * from emp; 
-- 把顶部最高的15%的行数选择，不是整数则加1,2.1=3
select top 5 ename, sal  
		from emp 
		where sal between 1500 and 7000 
		order by sal desc; 
--把工资从1500到7000之间的前五个人按降序输出，默认是升序