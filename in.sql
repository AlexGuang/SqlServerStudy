--in 是在几个特定的值中间进行判断
select * from emp where sal in (1500,3000,5000)
--等价于
select *from emp where sal = 1500 or sal = 3000 or sal = 5000;

select * from emp where sal not in (1500,3000,5000);
--等价于
select * from emp where sal!= 1500 and sal!= 3000 and sal!= 5000
--等价于
select * from emp where sal<>1500 and sal<>3000 and sal<>5000;
--数据库中不等号有两种表示方式，一种是!= 另一种是<>,推荐使用第二种
--对 “或”取反是‘并且’， 非‘并且’ 是 ‘或’