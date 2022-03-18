select top 5 * from emp;

select * from emp where comm is null;
--null 只可以参与 is 和is not 运算
select ename, sal*12 + ISNULL(comm,0) as "年收入" from emp
--这里使用了isnull（，）函数
--第一个形参是 字段 名，后面的形参是 如果 为null 则等于的值
-- isnull(comm,0) 如果comm是null,就返回零，否则返回0