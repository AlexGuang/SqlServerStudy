--���ҹ�����1500��3000֮�䣨����1500��3000�������е�Ա������Ϣ
select * from emp where sal between 1500 and 3000;
--�ȼ���
select * from emp where sal>= 1500 and sal <=3000;
-- �����ǲ�ѯ������С��1500�����3000֮������е�Ա������Ϣ
select * from emp where sal <1500 or sal >3000;--�ȼ���
select * from emp where  sal not between 1500 and 3000;
--between and ǰ�Ӹ�not, �����ų���between and ֮�������