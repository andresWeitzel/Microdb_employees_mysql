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
(1,'Romina', 'Pereira', 25 , 'FEMALE', 'DNI', '37087122223', 'romi2@gmail.com'
, '1123467895', '2020-09-12', 48 , 180.000, now(), now()), -- Adm 
(2, 'Javier', 'Gonzalez', 32 , 'MALE', 'DNI', '26733168765' , 'javiBoquita@gmail.com'
, '1163464891', '2019-10-02',  48 , 330.000, now(), now()), -- Dev
(3, 'Hector', 'Gomez', 34 , 'MALE', 'DNI', '21763915827'
, 'hectorGomez78@gmail.com', '1153467892', '2018-07-12', 46 , 440.500, now(), now()),-- Dev
(4, 'Gabriela', 'Jimenez', 22 , 'FEMALE', 'DNI', '41021987123' 
,'gabriela.consultas@hotmail.com', '1198765816', '2019-03-02'
, 52, 310.782, now(), now()),-- soporte
(5, 'Gustavo', 'Gomez', 30 , 'MALE', 'PASAPORTE', '74800021221' 
,'gustavo_andaluz@gmail.com', '1163716189', '2020-07-07',  49 , 350.700, now(), now()),-- soporte
(6, 'Jose', 'Perez', 42 , 'MALE', 'DNI', '22287688340', 'jose_consultasInternas@hotmail.com'
, '1167543490', '2018-02-01',  52 , 560.000, now(), now()-- gerente
);

select * from employees;

