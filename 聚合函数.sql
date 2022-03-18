select LOWER(ename) from emp;--最终返回的是14行，lower（）是单行函数
--单行函数是每一行都返回一个值，所以有14行，而多行函数指的是对14条记录做
--完处理之后得到的一个值作为返回值，所以多行返回一个值，叫多行函数
select MAX(sal) from emp;
--返回行max()是多行函数，只返回一个值
select COUNT(*) from emp;--返回emp表所有记录的个数
select COUNT(deptno) from emp;--返回值是14,说明deptno重复的记录也被当作有效的记录
select COUNT(distinct deptno) from emp;--返回值是3,统计deptno不重复的记录个数
select COUNT(comm) from emp;--返回值是4,说明comm为null的记录不会被当作有效的记录
select MAX(sal)"最高工资",MIN(sal)"最低工资",COUNT(*) "总人数" from emp;
--MAX(),MIN(),COUNT()都是把整个表处理完返回一个值，多行函数
select LOWER(ename) from emp;--把ename所有字段按小写输出， 单行函数
select UPPER(ename) from emp;--把ename 所有字段按大写输出，单行函数
select MAX(sal), LOWER(name) from emp;--error, 多行函数和单行函数不能混用
