-- creando la base de datos
create database  if not exists bdproductosfarmaceuticos;
-- creando tabla
create table if not exists bdproductosfarmaceuticos.medicamentos
(
id int not null unique auto_increment, 
nombreProducto varchar(40) unique,
laboratorio varchar(40),
precio decimal(8,2)

);
-- agregando datos
insert into medicamentos  values (0, 'Tamex', 'Serral', 68.5);
insert into medicamentos  values (0, 'Atarax', 'ucb', 200.55);
insert into medicamentos  values (0, 'Excitalopram', 'AMSA', 490);
insert into medicamentos  values (0, 'Splash tears', 'Ophia', 198);
insert into medicamentos  values (0, 'Diclofenaco', 'Best', 259);
-- mostrando la tabla
select * from medicamentos;
describe medicamentos;
select * from medicamentos where  nombreProducto =  "Diclofenaco";