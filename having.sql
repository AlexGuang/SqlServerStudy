--�������ƽ�����ʴ���1500�Ĳ��ŵĲ��ű�� ���ŵ�ƽ������
select deptno, AVG(sal) "ƽ������"
		from emp
		group by deptno
		having AVG(sal) > 1500;
--�������ƽ�����ʴ���2500�Ĳ��ŵĲ��ű�� ���ŵ�ƽ������
select deptno, AVG(sal) "ƽ������"
		from emp
		group by deptno
		having AVG(sal) > 2500;
----having �������� ���������ݣ����ͨ������ʹ��group by.
--������������A�����е�Ա�������ű�ŷ���
select deptno "���ű��",COUNT(*) "���ֲ���a��Ա������"
		from emp
		where ename not like ('%a%')
		group by deptno
		having AVG(sal)>2000;
select deptno, sal from emp
where deptno =10;
--�ܼ�: ����select�Ĳ�����˳���ǲ�����仯�ģ��������ʱ����