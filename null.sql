select * from emp;
select * from emp 
		where comm is not null--输出奖金不为空的信息
--null 可以参与 is 和is not
select * from emp
		where comm is null;--输出奖金为空的信息
--零和null是不一样的，null 表示空值，没有值，零表示一个确定的值
--null不能参与如下运算：<> != =
--null 可以参与如下运算： is  not       is
--任何类型数据都允许为null
create table t1
( name nvarchar(20), cnt int, riqi date)
insert into t1 values(null,null,null);
---任何数字与null参与数学运算的结果永远为null