--�ѹ��ʴ���1500������Ա�������ŷ��飬�Ѳ���ƽ�����ʴ���2000�����ǰ����
--���ŵı�ţ����ŵ����ƣ�����ƽ�����ʵĵȼ����
select top 2 "A"."deptno" "���ű��","D".dname "��������","S".GRADE "����ƽ�����ʵȼ�"
		from
		dept "D"
		join		
		(
			select "E".deptno ,AVG("E".sal)"avg_sal"--�оۺϺ�������ֵ�������Ҫ����
				from emp "E"
				where "E".sal > 1500
				group by deptno				
		) "A" 
		on "A".deptno = "D".deptno 
		join SALGRADE "S"
		on "A".avg_sal between "S".LOSAL and "S".HISAL
		where "A".avg_sal > 2000
		order by "A".avg_sal desc



	