select* from emp order by sal;--默认是按照升序排序
select* from emp order by deptno, sal desc ;
--先按前者排序，前者相同的，再按后者排序
--先按照deptno升序排列， 其中deptno相同的再按照sal 降序排列


select *from emp order by deptno desc, sal;
--先按照deptno降序排序，如果deptno相同，再按照sal 升序排序
--记住sal 是升序不是降序
--order by a desc, b, c, d desc 只对a 产生影响，不会对b,c有影响