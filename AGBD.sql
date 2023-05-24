drop database if exists cine; 
create database cine;
use cine;

create table sala (
idsala tinyint unsigned,
piso tinyint unsigned,
capacidad smallint unsigned, 
primary key(idsala)
);
create table pelicula (
idpelicula smallint unsigned,
nombre varchar (45),
lanzamiento date ,
primary key (idpelicula),
unique (nombre)
);
create table genero (
idgenero char(15),
idpelicula 	smallint unsigned,
primary key (idgenero),
foreign key (idpelicula) references pelicula(idpelicula)
);
create table cliente ( 
idcliente smallint unsigned,
nombre varchar(15),
apellido varchar(20),
email varchar (30),
contra char(8),
idsala tinyint unsigned,
primary key (idcliente),
foreign key (idsala) references sala(idsala),
  unique  (email)
   
);


create table  Proyeccion(
idproyeccion int NOT NULL , 
idsala tinyint unsigned,
idpelicula smallint unsigned,
fecha_hora datetime,
primary key (idproyeccion), 
FOREIGN KEY(idsala)
references sala(idsala),
foreign key (idpelicula)
references pelicula(idpelicula)
);
create table entrada (
identrada smallint unsigned, 
idcliente smallint unsigned,	
idproyeccion tinyint unsigned,
precio double,
primary key(identrada),
foreign key (idcliente)
references cliente (idcliente),
foreign key (idproyeccion)
references proyeccion (idproyeccion)

);


