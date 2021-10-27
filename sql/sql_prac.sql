-- DML ���� �ǽ� | ��ȸ�ϱ�(select��)
-- �� ���̺��� ������ ��ȸ
select * from cslee.tb_accnt;
select * from cslee.tb_cust;
select * from cslee.tb_emp;
select * from cslee.tb_prod;
select * from cslee.tb_tran;
select * from cslee.tb_trcd;

-- �÷��� ���� ��� �ش� �÷��� �����ؼ� �� �� �ִ�.
select cust_name, reg_num from cslee.tb_cust;

-- 4��. ������ ���Ѱ� ����
-- 1. Where�� ����

--����1: ������ �� ��
select EMP_NAME ����̸�, ORG_CD �Ҽ�, position ����, SALARY ����
from cslee.tb_emp
where position ='�븮';

--����2: ���� �� -��µǴ� �Ǽ��� ���غ�����
select COUNT(*) from cslee.tb_temp;
select EMP_NAME ����̸�, ORG_CD �Ҽ�, position ����, SALARY ����
from cslee.TB_EMP;

select EMP_NAME ����̸�, ORG_CD �Ҽ�, position ����, SALARY ����
from cslee.tb_emp
where salary >= 50000000;

--����3: ������ �켱����
select EMP_NAME ����̸�, ORG_CD �Ҽ�, position ��å, SALARY ����
from cslee.tb_emp
where (org_cd='08' or org_cd='09' or org_cd='10')
and "position" ='���'
and salary >= 40000000
and salary <= 50000000;

--����4: ������ �켱����(Between A and B ����)
select EMP_NAME ����̸�, ORG_CD �Ҽ�, position ��å, SALARY ����
from cslee.tb_emp
where org_cd in ('08','09','10')
and "position" ='���'
and salary between 40000000 and 50000000;

select EMP_NAME ����̸�, SALARY ����
from cslee.tb_emp
where salary between 40000000 and 50000000;

--����5: where ������ -in 
select EMP_NAME, ORG_CD, position 
from cslee.tb_emp
where org_cd in ('06','07')
and "position" in ('����','����');

select EMP_NAME, ORG_CD, position 
from cslee.tb_emp
where (org_cd, "position")
	in (('06','����'),('07','����'));

--���� 6: Where ���� -like 
--"��"�� ���� ���� �������� ������ ��ȸ�ϴ� where���� �ۼ��Ѵ�.
select EMP_NAME ����̸�, ORG_CD ���ڵ�, position ��å, ENT_DATE �Ի�����
from cslee.tb_emp
where emp_name like '��%';

--�̸��� �ι�°�� "��"�� �������� ������ ��ȸ�϶�
select EMP_NAME ����̸�, ORG_CD ���ڵ�, position ��å, ENT_DATE �Ի�����
from cslee.tb_emp
where emp_name like '_��%'

--����7: Where ���� -IS null
select EMP_NAME ����̸�, ORG_CD �Ҽ�, position ��å, GENDER ����
from cslee.tb_emp
where gender=null;

select EMP_NAME ����̸�, ORG_CD �Ҽ�, position ��å, GENDER ����
from cslee.tb_emp;
where GENDER is null;

--����8: Where ���� - ����������
--���� 3��(10)�� ����߿��� '����'�� ������ ������ �������� �ڷḦ ã�´� 
select emp_name ����̸�, org_cd �Ҽ�, position ��å
from cslee.tb_emp
where org_cd ='10'
and not "position" ='����';

-- �Ҽ��� null �� �ƴ� ������ �ڷḦ ã�´� 
select emp_name ����̸�, org_cd �Ҽ�, position ��å
from cslee.tb_emp
where org_cd is not null;

--2. Order by���� �����ϱ� 
--���� 9
select org_cd �μ�, emp_name ����̸�, ent_data �Ի���
from cslee.tb_emp
order by org_cd, ent_date desc;

select emp_name, emp_no, org_cd
from cslee.tb_emp
order by emp_name asc, emp_no asc, emp_no desc;

select emp_name ����̸�, emp_no �����ȣ, org_Cd �μ��ڵ�
from cslee.tb_emp
order by ����̸�, �����ȣ, �μ��ڵ� desc;

select emp_name, emp_no, org_no
from cslee.tb_emp
order by 1 asc, 2 asc, 3 desc;

select emp_name ����̸�, emp_no �����ȣ, org_cd �μ��ڵ�
from cslee.tb_emp
order by emp_name, 2, �μ��ڵ� desc;