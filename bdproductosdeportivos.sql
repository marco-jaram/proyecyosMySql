/*
Trabajo en equipo u6 
Aspecto 1:
Crea una tabla que permita almacenar la información sobre diversos productos
deportivos. Incluye el número de campos que consideres pertinentes. Ingresa 6
registros y realiza las siguientes consultas:
• Una consulta empleando el comando Describe
• Una consulta empleando Select  para mostrar toda la información de la
tabla
• Dos consultas empleando Select para mostrar algunos campos
• Dos consultas empleando Select  junto con el comando Distinct
• Dos consultas empleando Select junto con el comando AS
• Dos consultas empleando Select junto con el uso de operadores
matemáticos
• Dos consultas empleando Select junto con el  operador ||
*/
create database if not exists productosdeportivos;
create table if not exists productosdeportivos.productos
(
id int not null unique auto_increment, 
nombreProducto varchar(40) unique,
areaDeportiva varchar(40),
existencia int ,
precio decimal(8,2)

);
-- agregando datos
insert into productos  values (0, 'Bat', 'BaseBall', 12, 874.50);
insert into productos  values (0, 'Playera Puma Essentials ', 'FutBall', 16, 670.50);
insert into productos  values (0, 'Short Puma Training', 'BasketBall', 3, 599);
insert into productos  values (0, 'CASCO DE ESCALADA', 'Alpinismo', 26, 580);
insert into productos  values (0, 'RAQUETA DE PÁDEL PR 560', 'Tenis', 5, 1800);
insert into productos  values (0, 'Goggles', 'Natacion', 50, 290);
-- consultas
show databases;
select * from productos;
describe productos;
select * from producto where  areaDeportiva =  "BaseBall";
select * from producto where  areaDeportiva =  "Tenis";
-- as para simplificar usando un alias
select  nombreProducto AS nom from productos;
select distinct nombreProducto from productos;
