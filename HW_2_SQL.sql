--Создать таблицу employees    id. serial,  primary key,     employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name Varchar(50) not null);

select * from employees

--Наполнить таблицу employee 70 строками.

DROP table employees;

insert into employees(employee_name)
values ('Аксёнов'),
('Шубин'),
('Орехов'),
('Хижняк'),
('Яровой'),
('Козлов'),
('Кириллов'),
('Моисеев'),
('Самсонов'),
('Дубченко'),
('Смирнов'),
('Тимофеев'),
('Городецкий'),
('Пахомов'),
('Навальный'),
('Павлов'),
('Агафонов'),
('Лазарев'),
('Красильников'),
('Щукин'),
('Семёнов'),
('Князев'),
('Трублаевский'),
('Щербак'),
('Городецкий'),
('Шестаков'),
('Потапов'),
('Коваленко'),
('Карпов'),
('Рогов'),
('Сидоров'),
('Городецкий'),
('Быков'),
('Самойлов'),
('Павлик'),
('Гуляев'),
('Комиссаров'),
('Худобяк'),
('Погомий'),
('Суворов'),
('Пономарёв'),
('Журавлёв'),
('Комиссаров'),
('Субботин'),
('Мясников'),
('Моисеев'),
('Сидоров'),
('Симонов'),
('Сыпченко'),
('Гуляев'),
('Червоний'),
('Орехов'),
('Дроздов'),
('Фомичёв'),
('Силин'),
('Виноградов'),
('Червоний'),
('Вишняков'),
('Лаврентьев'),
('Никитин'),
('Логинов'),
('Селезнёв'),
('Городецкий'),
('Кондратьев'),
('Желиба'),
('Шилов'),
('Ильин'),
('Рыбаков'),
('Константинов'),
('Городецкий');


--Создать таблицу salary  id. Serial  primary key,  monthly_salary. Int, not null

create table salary (
id serial primary key,
monthly_salary int not null
);

--Наполнить таблицу salary 15 строками:

insert into salary(monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400);
	
--Создать таблицу employee_salary  - id. Serial  primary key,  - employee_id. Int, not null, unique  - salary_id. Int, not null
	
DROP table employees_salary;

select * from employees_salary;

		
create table employees_salary (
id serial primary key, 
employee_id int not null unique,
salary_id int not null);

--Наполнить таблицу employee_salary 40 строками:  в 10 строк из 40 вставить несуществующие employee_id

insert into employees_salary(employee_id,salary_id)
values (1, 40),
		(2, 39),
		(3, 38),
		(4, 37),
		(5, 36),
		(6, 35),
		(7, 34),
		(8, 33),
		(9, 32),
		(10, 31),
		(11, 30),
		(12, 29),
		(13, 28),
		(14, 27),
		(15, 26),
		(16, 25),
		(17, 24),
		(18, 23),
		(19, 22),
		(20, 21),
		(21, 20),
		(22, 19),
		(23, 18),
		(24, 17),
		(25, 16),
		(26, 15),
		(27, 14),
		(28, 13),
		(29, 12),
		(30, 11),
		(72, 10),
		(73, 9),
		(74, 8),
		(75, 7),
		(76, 6),
		(77, 5),
		(78, 4),
		(79, 3),
		(80, 2),
		(81, 1);
		
--Создать таблицу roles- id. Serial  primary key,- role_name. int, not null, unique    Поменять тип столба role_name с int на varchar(30)   
--Наполнить таблицу roles 20 строками:

	
create table roles ( 
id serial primary key, role_name int not null unique
);

select * from roles;

alter table roles 
alter column role_name type varchar(30) using role_name ::varchar(32);

insert into roles(role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

	
--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

DROP table roles_employee;	
	
create table roles_employee(  id serial primary key, 
								employee_id int not null unique,
								role_id int not null,
								foreign key (employee_id)
									references employees(id),
								foreign key (role_id)
									references roles(id)
);

select * from roles_employee

--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)
values (1, 20),
		(2, 19),
		(3, 18),
		(4, 17),
		(5, 16),
		(6, 15),
		(7, 14),
		(8, 13),
		(9, 12),
		(10, 11),
		(11, 10),
		(12, 9),
		(13, 8),
		(14, 7),
		(15, 6),
		(16, 5),
		(17, 4),
		(18, 3),
		(19, 2),
		(20, 1),
		(21, 20),
		(22, 19),
		(23, 18),
		(24, 17),
		(25, 16),
		(26, 15),
		(27, 14),
		(28, 13),
		(29, 12),
		(30, 11),
		(31, 10),
		(32, 9),
		(33, 8),
		(34, 7),
		(35, 6),
		(36, 5),
		(37, 4),
		(38, 3),
		(39, 2),
		(40, 1);
		
create table salarys_roles(id serial primary key, 
							salary_id int not null unique,
							role_id int not null unique,
							foreign key (salary_id)
									references salary(id),
							foreign key (role_id)
									references roles(id));
									
insert into salarys_roles(role_id, salary_id)
values (1, 1),
		(2,2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15);
	
select * from salarys_roles