select * from roles
left join salary
on roles.id = salary.id;

select * from employees
join roles_employee
on employees.id = roles_employee.employee_id
join salary on employees_salary.salary_id = salary.id ;

select role_name, monthly_salary  from roles 
join salarys_roles
on roles.id = salarys_roles.role_id 
join salary on salarys_roles.salary_id = salary.id 

-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary  from employees
join roles_employee
on employees.id = roles_employee.employee_id
join salarys_roles
on salarys_roles.id = roles_employee.employee_id
join salary on salary.id = salarys_roles.salary_id;


--2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary  from employees
join roles_employee
on employees.id = roles_employee.employee_id
join salarys_roles
on salarys_roles.id = roles_employee.employee_id
join salary on salary.id = salarys_roles.salary_id
where monthly_salary < 2000;

--3. ������� ��� ���������� �������,  �� ������� �� �������� ��������. (�� ����, �� �� ������� ��� � ��������.)
select * from employees
join employees_salary
on employees.id = employees_salary.employee_id
right join salary 
on employees_salary.salary_id = salary.id
where employee_name is null;  

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select * from employees
join employees_salary
on employees.id = employees_salary.employee_id
right join salary 
on employees_salary.salary_id = salary.id
where employee_name is null or monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
 
select * from employees
left join employees_salary
on employees.id = employees_salary.employee_id
where salary_id is null;


--6. ������� ���� ���������� � ���������� �� ���������.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id;

-- 7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Java%';

--8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Python%';


 --9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Manual QA%';

--11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Automation QA%';

-- 12. ������� ����� � �������� Junior ������������

select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������
select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������

select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where role_name like '%Senior%';

--15. ������� �������� Java �������������
select role_name, monthly_salary from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like '%Java%';


--16. ������� �������� Python �������������

select role_name, monthly_salary from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like '%Python%';

--17. ������� ����� � �������� Junior Python �������������

select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where role_name like '%Junior Python%';


--18. ������� ����� � �������� Middle JS �������������

select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where role_name like '%Middle JavaS%';

--19. ������� ����� � �������� Senior Java �������������

select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where role_name like 'Senior Java developer';


--20. ������� �������� Junior QA ���������

select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where role_name like 'Junior Manual QA engineer' or role_name like 'Junior Automation QA engineer'; -- ��������������� �������� �� ��������� - �� �� �������)))

 --21. ������� ������� �������� ���� Junior ������������

select AVG(monthly_salary) AS average_monthly_salary_juniors from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like '%Junior%';

 --22. ������� ����� ������� JS �������������
select SUM(monthly_salary) AS summary_monthly_salary_JS from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like '%JavaS%';

--23. ������� ����������� �� QA ���������
select MIN(monthly_salary) AS min_monthly_salary_QA from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like 'Junior Manual QA engineer';

--24. ������� ������������ �� QA ���������
select MAX(monthly_salary) AS max_monthly_salary_QA from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like 'Junior Manual QA engineer';

--25. ������� ���������� QA ���������
select count(role_name) from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%QA engineer%';

--26. ������� ���������� Middle ������������.
select count(role_name) from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Middle%';

--27. ������� ���������� �������������
select count(role_name) from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%developer%';

--28. ������� ���� (�����) �������� �������������.
select SUM(monthly_salary) as sum_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id;

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
ORDER BY monthly_salary  asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where monthly_salary BETWEEN 1700 AND 2300
ORDER BY monthly_salary  asc;


--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where monthly_salary < 2300
ORDER BY monthly_salary  asc;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where monthly_salary IN (1100, 1500, 2000)
ORDER BY monthly_salary  asc;

