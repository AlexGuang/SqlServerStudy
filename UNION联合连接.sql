select "E1".ename,"E1".SAL, "E2".ename
 from emp "E1"
   join emp "E2"
   on "E2".EMPNO = "E1".mgr
union
select ename, sal, 'ÖÕ¼«ÀÏ°å'
from emp
where mgr is null