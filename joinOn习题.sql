--1. ���ÿ��Ա�������������ű�ţ�нˮ��нˮ�ĵȼ�
select "E".ename "Ա������","E".deptno "���ű��", "E".sal "нˮ"
				,"S".GRADE " нˮ�ȼ�"
			from emp "E"
			join SALGRADE "S"
			on "E".sal between "S".LOSAL AND "S".HISAL
--2.����ÿ�����ŵı�� �ò�������Ա����ƽ�����ʣ�ƽ�����ʵĵȼ�
select "E".deptno, AVG("E".sal),"S".GRADE
			from emp "E"
			group by "E".deptno
			join SALGRADE "S"
			on AVG("E".sal) between "S".LOSAL and "S".HISAL
			--error,�ۺϲ��ܳ�����on���Ӿ���
--�³��ԡ�

select "N".deptno "���ű��", "N".avg_sal "����ƽ������","S".GRADE "����ƽ�����ʵȼ�"
		from (
		select "E".deptno, AVG("E".sal) as "avg_sal"
				from emp "E"
				group by "E".deptno
		 
		)  AS "N"---�ǵģ����������ˣ����԰�һ���ڱ���������ΪN
		join SALGRADE "S"
		on "N".avg_sal between "S".LOSAL and "S".HISAL--Ҳ���԰�from��join����������
--�ȼ���
select "T".deptno "���ű��","T".avg_sal "����ƽ������","S".GRADE "����ƽ�����ʵȼ�"

	from SALGRADE "S"
	join(
		select "E".deptno as "deptno", AVG("E".sal) "avg_sal"
				from emp "E"
				group by "E".deptno
	) "T"
	on "T".avg_sal between "S".LOSAL and "S".HISAL
--4.������е��쵼��Ϣ
select distinct *
   from emp "E"
   join (select mgr  "L"from emp) "T"
   on "E".EMPNO = "T".L
--5.���ƽ��нˮ��ߵĲ��ŵı�źͲ��ŵ�ƽ������
select top 1 "E".deptno "���ű��", AVG("E".sal) "AVG_SAL"
		from emp "E"
		group by "E".deptno
		order by "AVG_SAL" desc
--����top ����
select "E".deptno,AVG("E".sal) "avg_sal"
		from emp "E"
		group by "E".deptno
		where avg_sal in MAX( select AVG(sal)from emp)
--�����棬 �����ھۺϺ���ʱ�Ƚ��鷳��ÿһ��ʹ�ö�Ҫ����select
select *--"E".deptno,"E".avg_sal
		from (
		select "E".deptno,AVG("E".sal) "avg_sal"
			from emp "E"
			group by "E".deptno
		) "E"
		
		where "E".avg_sal in( select MAX("C".avg_sal)from
							(select deptno, AVG(sal) "avg_sal"
									from emp
									group by deptno
							) "C")
		
		select AVG(sal) "avg_sal" from emp
													group by deptno) )"max_avg_sal"from emp
													group by "T".avg_sal)
		
--6.�ѹ��ʴ�������Ա���й�����͵�ǰ3���˵����������ʣ����ű�ţ��������ƣ����ʵȼ� ���
select top ("T".SUM -3) "T".ename, "T".sal, "T".deptno, "D".dname,"S".GRADE
			from 
			(select "E".sal, "E".ename,"E".deptno,"N".SUM 
				from 
			(select COUNT(*) "SUM"
				from emp)"N", emp "E"
			 ) "T"
			join dept "D"
			on "T".deptno =  "D".deptno
			join SALGRADE "S"
			on "T".sal between "S".LOSAL and "S".HISAL
--����
select TOP 3 "T".ename "Ա������","D".dname "��������","T".sal "Ա������", "S".GRADE "Ա�����ʵȼ�"
	from(
		select *
			from emp
			where sal > (select MIN(sal)from emp)
		) "T"
		join dept "D"
		on "D".deptno = "T".deptno
		join SALGRADE "S"
		on "T".sal between "S".LOSAL and "S".HISAL
		order by "T".sal
		
--������㷨���ѾۺϺ�����������ֵ��ʱʹ��
select*
	from(
	select*
		from emp
		where sal > (select MIN(sal) from emp)--�þۺϺ���ȡ����Сֵ�ж�
	) "T"----��ʹ�ô������ʱ�����һ����ʱ��������ĩβ����ʱ������