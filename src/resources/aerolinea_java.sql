create database aerolinea_java;
use aerolinea_java;

create table avion(
id int primary key,
modelo varchar(50),
capacidad int
);

create table vuelo(
id int primary key,
destino varchar(100) NOT NULL,
fechaSalida date NOT NULL,
horaSalida time NOT NULL,
idAvion int,
foreign key (idAvion) references avion(id));

create table pasajero(
id int primary key,
name varchar(100) NOT NULL,
apelido varchar(100),
documentoIdentidad varchar(50));

create table reservacion (
id int primary key,
fechaReservacion date NOT NULL,
asiento varchar(50) NOT NULL,
idPasajero int,
idVuelo int,
foreign key(idPasajero) references pasajero(id),
foreign key(idVuelo) references vuelo(id));

select * from avion;
select * from vuelo;
select * from pasajero;
select * from reservacion;
ALTER TABLE pasajero
change COLUMN apelido  apellido varchar(100);

ALTER TABLE pasajero
change COLUMN nombre  name varchar(100);