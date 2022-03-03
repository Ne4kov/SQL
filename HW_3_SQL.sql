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

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary  from employees
join roles_employee
on employees.id = roles_employee.employee_id
join salarys_roles
on salarys_roles.id = roles_employee.employee_id
join salary on salary.id = salarys_roles.salary_id;


--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary  from employees
join roles_employee
on employees.id = roles_employee.employee_id
join salarys_roles
on salarys_roles.id = roles_employee.employee_id
join salary on salary.id = salarys_roles.salary_id
where monthly_salary < 2000;

--3. Вывести все зарплатные позиции,  по которым не назначен работник. (ЗП есть, но не понятно кто её получает.)
select * from employees
join employees_salary
on employees.id = employees_salary.employee_id
right join salary 
on employees_salary.salary_id = salary.id
where employee_name is null;  

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from employees
join employees_salary
on employees.id = employees_salary.employee_id
right join salary 
on employees_salary.salary_id = salary.id
where employee_name is null or monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.
 
select * from employees
left join employees_salary
on employees.id = employees_salary.employee_id
where salary_id is null;


--6. Вывести всех работников с названиями их должности.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id;

-- 7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Java%';

--8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Python%';


 --9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Manual QA%';

--11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name  from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов

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

--13. Вывести имена и зарплаты Middle специалистов
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

--14. Вывести имена и зарплаты Senior специалистов

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

--15. Вывести зарплаты Java разработчиков
select role_name, monthly_salary from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like '%Java%';


--16. Вывести зарплаты Python разработчиков

select role_name, monthly_salary from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков

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


--18. Вывести имена и зарплаты Middle JS разработчиков

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

--19. Вывести имена и зарплаты Senior Java разработчиков

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


--20. Вывести зарплаты Junior QA инженеров

select employee_name, role_name, monthly_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id
where role_name like 'Junior Manual QA engineer' or role_name like 'Junior Automation QA engineer'; -- автоматизаторам зарплаты не присвоены - им не хватило)))

 --21. Вывести среднюю зарплату всех Junior специалистов

select AVG(monthly_salary) AS average_monthly_salary_juniors from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like '%Junior%';

 --22. Вывести сумму зарплат JS разработчиков
select SUM(monthly_salary) AS summary_monthly_salary_JS from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like '%JavaS%';

--23. Вывести минимальную ЗП QA инженеров
select MIN(monthly_salary) AS min_monthly_salary_QA from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like 'Junior Manual QA engineer';

--24. Вывести максимальную ЗП QA инженеров
select MAX(monthly_salary) AS max_monthly_salary_QA from roles
join salarys_roles
on roles.id = salarys_roles.role_id
join salary
on salary.id = salarys_roles.salary_id
where role_name like 'Junior Manual QA engineer';

--25. Вывести количество QA инженеров
select count(role_name) from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%QA engineer%';

--26. Вывести количество Middle специалистов.
select count(role_name) from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(role_name) from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select SUM(monthly_salary) as sum_salary from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
join salarys_roles
on salarys_roles.role_id = roles.id
join salary 
on salarys_roles.salary_id = salary.id;

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию

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

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
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


--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
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

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
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

