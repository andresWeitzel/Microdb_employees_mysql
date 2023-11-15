/* ---------------------------------
 * ------ MICRODB EMPLOYEES --------
 * ---------------------------------
 * 
 * ========= DDL =============
 */

-- DATABASE
drop database if exists microdb_employees_mysql;

create database microdb_employees_mysql;

use microdb_employees_mysql;

-- TABLES
drop table if exists employees;
drop table if exists developers;
drop table if exists technical_support;
drop table if exists administration;
drop table if exists managers;

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla employees ===========

create table employees(

id bigint auto_increment primary key,
name varchar(40) not null,
lastname varchar(40) not null,
age int(3)	not null,
gender enum('MALE','FEMALE','NO_GENDER') default 'NO_GENDER',
doc_type varchar(17) not null,
doc_number varchar(15)	not null,
email varchar(50) not null,
phone_number varchar(25),
start_date date	not null,
weekly_hs_quantity int not null,
salary decimal(6,3) not null,
creation_date datetime not null,
update_date datetime not null
);


-- ======= Restricciones Tabla employeers ===========

-- UNIQUE ID
alter table employees 
add constraint UNIQUE_employees_id
unique key (id);

-- UNIQUE doc_number
alter table employees 
add constraint UNIQUE_employees_doc_number
unique key (doc_number);


-- CHECK SALARY
alter table employees
add constraint CHECK_employees_salary
check (salary > 0.000 );

-- CHECK UPDATE_DATE
alter table employees
add constraint CHECK_employees_update_date
check (update_date >= creation_date);


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla developers ===========

create table developers(

id bigint auto_increment primary key,
id_employee bigint not null,
dev_position varchar(100) not null,-- frontend, backend, full stack....
technology_stack varchar(200) not null, -- java dev...
work_modality enum('REMOTE', 'HIBRID', 'IN_PERSON') default 'REMOTE',
certifications varchar(500) not null,
skills varchar(200) not null,
creation_date datetime not null,
update_date datetime not null
);


-- ======= Restricciones Tabla employeers ===========

-- UNIQUE ID
alter table developers 
add constraint UNIQUE_developers_id
unique key (id);



-- CHECK UPDATE_DATE
alter table employees
add constraint CHECK_employees_update_date
check (update_date >= creation_date);
