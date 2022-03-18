select emp.ename, dept.dname from emp, dept
		where emp.deptno = dept.deptno;
select "E" emp.ename,"D" dept.dname 
		from "E" emp
		join "D" dept
		on emp.deptno = dept.deptno;
		
-�ѹ��ʴ���2000��Ա���������Ͳ��ŵ��������		
select "E".ename "Ա������", "D".dname "��������","E".sal "����"
		from emp "E",dept "D"
		where "E".deptno = "D".deptno and "E".sal>2000;
select "E".ename "Ա������","D".dname "��������","E".deptno "���ű��","E".sal "����"
				from emp "E"								
				join dept "D"
				on "E".deptno = "D".deptno
				where "E".sal> 2000;
				
				
--�ѹ��ʴ���2000��Ա���������Ͳ��ŵ��������	�ټ��Ϲ��ʵȼ�
--˼·:�Ȱ�emp��dept������join,�ٰ��������ϵĴ���SALGRADE���� join
--�������where ��������
--sql99
select "E".ename "Ա������","D".dname "��������","E".job "ְλ","E".sal "Ա������","S".GRADE "���ʵȼ�"
				from emp "E"
				join dept "D"
				on "E".deptno = "D".deptno
				join SALGRADE "S"
				on "E".sal<= "S".HISAL and "E".sal >= "S".LOSAL
				where "E".sal > 2000;
				
--sql92 �����еĹ�������д��where
select emp.ename "Ա������",dept.dname "��������",emp.job "ְλ",
					emp.sal "����",SALGRADE.GRADE "���ʵȼ�"
					from emp,dept,SALGRADE
					where emp.sal > 2000 and emp.deptno = dept.deptno 
					and emp.sal >= SALGRADE.LOSAL and emp.sal <= SALGRADE.HISAL;
--����ÿ�����ŵı�ţ��ò�������Ա����ƽ�����ʣ�ƽ�����ʵȼ�
select "D".deptno "���ű��", "D".dname "��������",
		AVG("E".sal) "����ƽ������","S".GRADE "����ƽ�����ʵȼ�"
		from emp "E"				
		join dept "D"
		on "E".deptno = "D".deptno
		join SALGRADE "S"
		on AVG("E".sal)>= "S".losal and AVG("E".sal )<= "S".hisal
		
		
--���emp���������쵼������
select distinct "E".ename "�쵼����","E".sal "�쵼����"
		from emp "E"		
		join emp "EI"
		on "E".EMPNO = "EI".mgr
		order by "E".sal desc
--���ƽ��нˮ��ߵĲ��ŵı�źͲ��ŵ�ƽ������
select top 1 "E".deptno "���ű��",avg("E".sal)"��ߵ�ƽ������"
			from emp "E"
			group by "E".deptno;
			
			
--�ѹ��ʴ�������Ա���й�����͵�ǰ�����˵��������������
select top (count(*)-3) "E".ename,"E".sal
           from emp "E"
           order by "E".sal desc
--���������ߵ�ǰ������ÿ��Ա�������� ����,���ʵȼ�,��������
select top 3 "E".ename "Ա������","E".sal"Ա������", "S".GRADE "���ʵȼ�","D".dname "��������"
		from emp "E"
		join SALGRADE "S"
		on "E".sal>= "S".LOSAL AND "E".sal<="S".HISAL
		join dept "D"
		on "E".deptno = "D".deptno
		--where "E".ename not like '%o%'
		order by E.sal desc
           
		

				