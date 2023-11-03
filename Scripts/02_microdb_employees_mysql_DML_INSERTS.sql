/* ---------------------------------
 * ------  MICRODB EMPLOYEES ---------
 * ---------------------------------
 * 
 * ========= DML INSERTS =============
 */

-- DATABASE
use microdb_employees_mysql;

-- TABLES
delete from employees;

-- AUTO_INCREMENT
alter table employees auto_increment 1;


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla employees ===========
insert into employees (id, name, lastname, age, gender, doc_type, doc_number
, email, phone_number , start_date, weekly_hs_quantity, salary  
, creation_date, update_date) values
(1,'Romina', 'Pereira', 25 , 'FEMALE', 'DNI', '37087123', 'romi2@gmail.com', '1123467895'
, '2020-09-12', 48 , 180.000, now(), now());

select * from employees;

