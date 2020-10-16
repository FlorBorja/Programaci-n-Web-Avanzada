create database appjsp;

use appjsp;

create table usuario (
	clave_maestro varchar(25) not null,
	nombre varchar(50) not null,
	usuario varchar(25) not null,
	password varchar(25) not null,
	rol int(1) not null,
	
	primary key(clave_maestro)
);

create table materias(
	id int not null AUTO_INCREMENT,
	clave varchar(50) not null,
	nombre varchar(50) not null,
	semestre int not null,
	carrera varchar(50) not null,
	creditos int not null,
	horas_t int not null,
	horas_p int not null,
	
	primary key(id)
);

create table sabana(
	clave_horario int not null,
	clave_maestro varchar(25) not null,
	clave_materia varchar(7) not null,
	clave_carrera varchar(3) not null,
	materia varchar(50) not null,
	carrera varchar(50) not null,
	maestro varchar(50) not null,
	periodo varchar(25) not null,
	turno varchar(25) not null,
	grupo varchar(1) not null,
	no_alumnos int not null,
	semestre int not null,
	creditos int not null,
	lunes varchar(25),
	martes varchar(25),
	miercoles varchar(25),
	jueves varchar(25),
	viernes varchar(25),
	salon varchar(5),
	horas_t int not null,
	horas_p int not null,
	
	primary key(clave_horario),
	foreign key(clave_maestro) references usuario(clave_maestro)
);

/*---------------------------------------------------------------INSERCIONES---------------------------------------------------------------*/
-------------------------------------------------------------------USUARIO-----------------------------------------------------------------
insert into usuario values('A20', 'Águila Reyes Antonio', 'aguila', '123', 1);
insert into usuario values('A21', 'Carpio Flores José Gerardo', 'carpio', '123', 2);
insert into usuario values('A22', 'Ramírez Álverez Irma de Jesús', 'irma', '123', 2);
insert into usuario values('A23', 'Levy Rojas Carlos Rafael', 'levy', '123', 2);

--------------------------------------------------------------------SABANA------------------------------------------------------------------
insert into sabana values(4011, 'A20', 'ACF0901', 'ISX', 'Cálculo Diferencial', 'Ingenieria en Sistemas Computacionales', 'Ing. Águila Reyes Antonio', 
'Agosto-Diciembre 2020', 'Matutino', 'E', 31, 1, 5, '10:30-12:10', '', '10:30-12:10', '', '10:30-11:20', 'C-5', 3, 2);
insert into sabana values(4013, 'A21', 'AED1285', 'ISX', 'Fundamentos de Programación', 'Ingenieria en Sistemas Computacionales', 'Ing. Carpio Flores José Gerardo', 
'Agosto-Diciembre 2020', 'Matutino', 'A', 35, 1, 5, '', '12:35-13:55', '', '12:35-13:55', '13:05-13:55', 'C-LC3', 2, 3);
insert into sabana values(4023, 'A22', 'SCH1024', 'ISX', 'Taller de Administración', 'Ingenieria en Sistemas Computacionales', 'Lic. Ramírez Álvarez Irma De Jesús', 
'Agosto-Diciembre 2020', 'Matutino', 'A', 34, 1, 4, '7:00-8:40', '', '7:00-8:40', '', '', 'C-D1', 1, 3);
insert into sabana values(4025, 'A22', 'SCH1024', 'ISX', 'Taller de Administración', 'Ingenieria en Sistemas Computacionales', 'Lic. Ramírez Álvarez Irma De Jesús', 
'Agosto-Diciembre 2020', 'Matutino', 'C', 35, 1, 4, '10:30-12:10', '', '10:30-12:10', '', '', 'C-D3', 1, 3);
insert into sabana values(4027, 'A22','SCH1024', 'ISX', 'Taller de Administración', 'Ingenieria en Sistemas Computacionales', 'Lic. Ramírez Álvarez Irma De Jesús', 
'Agosto-Diciembre 2020', 'Matutino', 'E', 31, 1, 4, '', '12:15-13:55', '', '12:15-13:55', '', 'C-D5', 1, 3);
insert into sabana values(4028, 'A22', 'ACC0906', 'ISX', 'Fundamentos de Investigación', 'Ingenieria en Sistemas Computacionales', 'Lic. Ramírez Álvarez Irma De Jesús', 
'Agosto-Diciembre 2020', 'Matutino', 'A', 34, 1, 4, '', '7:00-8:40', '', '7:00-8:40', '', 'C-D1', 2, 2);
insert into sabana values(4032, 'A22', 'ACC0906', 'ISX', 'Fundamentos de Investigación', 'Ingenieria en Sistemas Computacionales', 'Lic. Ramírez Álvarez Irma De Jesús', 
'Agosto-Diciembre 2020', 'Matutino', 'E', 31, 1, 4, '12:15-13:55', '', '12:15-13:55', '', '', 'C-D5', 2, 2);
insert into sabana values(4042, 'A21','AED1286', 'ISX', 'Programación Orientada a Objetos', 'Ingenieria en Sistemas Computacionales', 'Ing. Carpio Flores José Gerardo', 
'Agosto-Diciembre 2020', 'Matutino', 'B', 22, 2, 5, '12:15-13:55', '', '12:15-13:55', '', '12:15-13:05', 'C-D15', 2, 3);
insert into sabana values(4043, 'A21','AED1286', 'ISX', 'Programación Orientada a Objetos', 'Ingenieria en Sistemas Computacionales', 'Ing. Carpio Flores José Gerardo', 
'Agosto-Diciembre 2020', 'Matutino', 'C', 22, 2, 5, '7:00-8:40', '', '7:00-8:40', '', '7:00-7:50', 'C-D15', 2, 3);
insert into sabana values(4045, 'A22','AEC1008', 'ISX', 'Contabilidad Financiera', 'Ingenieria en Sistemas Computacionales', 'Lic. Ramírez Álvarez Irma de Jesús', 
'Agosto-Diciembre 2020', 'Matutino', 'A', 26, 2, 4, '', '10:30-12:10', '', '10:30-12:10', '', 'C-D2', 2, 2);
insert into sabana values(4073, 'A23','SCD1027', 'ISX', 'Tópicos Avanzados de Programación', 'Ingenieria en Sistemas Computacionales', 'Ing. Levy Rojas Carlos Rafael', 
'Agosto-Diciembre 2020', 'Matutino', 'A', 19, 4, 5, '', '12:15-13:55', '', '12:15-13:55', '13:05-13:55', 'C-D15', 2, 3);
insert into sabana values(4096, 'A23','SCA1025', 'ISX', 'Taller de Base de Datos', 'Ingenieria en Sistemas Computacionales', 'Ing. Levy Rojas Carlos Rafael', 
'Agosto-Diciembre 2020', 'Matutino', 'B', 10, 5, 4, '8:45-10:25', '', '8:45-10:25', '', '', 'C-D11', 0, 4);
insert into sabana values(4167, 'A21','SCC1019', 'ISX', 'Programación Lógica y Funcional', 'Ingenieria en Sistemas Computacionales', 'Ing. Carpio Flores José Gerardo', 
'Agosto-Diciembre 2020', 'Matutino', 'A', 21, 8, 4, '', '7:00-8:40', '', '7:00-8:40', '', 'C-D9', 2, 2);
insert into sabana values(4168, 'A21','SCC1019', 'ISX', 'Programación Lógica y Funcional', 'Ingenieria en Sistemas Computacionales', 'Ing. Carpio Flores José Gerardo', 
'Agosto-Diciembre 2020', 'Matutino', 'B', 14, 8, 4, '', '8:45-10:25', '', '8:45-10:25', '', 'C-D9', 2, 2);
insert into sabana values(4181, 'A23','DAD1403', 'ISX', 'Programación Web Avanzada', 'Ingenieria en Sistemas Computacionales', 'Ing. Levy Rojas Carlos Rafael', 
'Agosto-Diciembre 2020', 'Matutino', 'A', 20, 9, 5, '10:30-12:10', '', '10:30-12:10', '', '10:30-11:20', 'C-LC1', 2, 3);

-------------------------------------------------------------------MATERIAS-------------------------------------------------------------------
insert into materias values('','ACF0901', 'Cálculo Diferencial', 1, 'Ing. en Sistemas Computacionales', 5, 3, 2);
insert into materias values('','AED1285', 'Fundamentos de programación', 1, 'Ing. en Sistemas Computacionales', 5, 2, 3);
insert into materias values('','SCH1024', 'Taller de Administración', 1, 'Ing. en Sistemas Computacionales', 4, 1, 3);
insert into materias values('','ACC0906', 'Fundamentos de Investigación', 1, 'Ing. en Sistemas Computacionales', 5, 2, 3);
insert into materias values('','ACC0906', 'Fundamentos de Investigación', 1, 'Ing. en Sistemas Computacionales', 4, 2, 2);
insert into materias values('','AED1286', 'Programación Orientada a Objetos', 1, 'Ing. en Sistemas Computacionales', 5, 2, 3);
insert into materias values('','AEC1008', 'Contabilidad Financiera', 1, 'Ing. en Sistemas Computacionales', 4, 2, 2);
insert into materias values('','SCD1027', 'Tópicos Avanzados de Programación', 1, 'Ing. en Sistemas Computacionales', 5, 2, 3);
insert into materias values('','SCA1025', 'Taller de Base de Datos', 1, 'Ing. en Sistemas Computacionales', 4, 0, 4);
insert into materias values('','SCC1019', 'Programación Lógica y Funcional', 1, 'Ing. en Sistemas Computacionales', 4, 2, 2);
insert into materias values('','DAD1403', 'Programación Web Avanzada', 1, 'Ing. en Sistemas Computacionales', 4, 2, 3);


