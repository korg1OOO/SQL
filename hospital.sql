create database hospital;
show databases;
use hospital;

create table medico(
codMed int primary key,
nomeMed varchar(40) not null,
dataNasc date not null,
cpf char(11),
cidade varchar(30) not null,
especialidade varchar(30) not null
);

create table paciente(
codPac int primary key,
nomePac varchar(40) not null,
dataNasc date not null,
cpf char(11),
cidade varchar(30) not null
);

create table consulta(
codMed int not null,
codPac int not null,
dataConsulta date not null,
hora time not null,
primary key(codMed, codPac),
foreign key(codMed) references medico(codMed),
foreign key(codPac) references paciente(codPac)
);

INSERT INTO medico VALUES (1,'Joao','1984-06-28','10000100000','Florianópolis','Ortopedia');
INSERT INTO medico VALUES (2,'Maria','1970-07-13','11100100000','Blumenau','Traumatologia');
INSERT INTO medico VALUES (3,'Pedro','1956-11-25','10001101000','Porto Velho','Pediatria');
INSERT INTO medico VALUES (4,'Carlos','1985-02-07','11110100000','Joinville','Ortopedia');
INSERT INTO medico VALUES (5,'Marcia','1945-08-15','10110100000','Fortaleza','Neurologia');
INSERT INTO medico VALUES (6,'Luciana','1975-04-25','01001011111','Rio Branco','Oftalmologia');
INSERT INTO paciente VALUES (1,'Ana','1978-09-13','22010005000','Florianópolis');
INSERT INTO paciente VALUES (2,'Paulo','1940-03-17','81101000400','Porto Velho');
INSERT INTO paciente VALUES (3,'Lucia','1957-06-24','17910100000','Blumenau');
INSERT INTO paciente VALUES (4,'Carlos','2001-10-08','12510100000','Joinville');
INSERT INTO paciente VALUES (5,'Luiz','2000-08-14','14780111400','Fortaleza');
INSERT INTO paciente VALUES (6,'Maurício','1980-01-01','47855499635','Rio Branco');
INSERT INTO consulta VALUES (1,1,'2021-05-12','14:00');
INSERT INTO consulta VALUES (1,4,'2021-05-13','10:00');
INSERT INTO consulta VALUES (2,1,'2020-10-13','9:00');
INSERT INTO consulta VALUES (2,2,'2021-03-13','11:00');
INSERT INTO consulta VALUES (2,3,'2020-08-14','14:00');
INSERT INTO consulta VALUES (2,4,'2020-08-14','17:00');
INSERT INTO consulta VALUES (3,6,'2020-05-19','18:00');
INSERT INTO consulta VALUES (3,3,'2021-04-12','10:00');
INSERT INTO consulta VALUES (5,4,'2021-04-19','13:00');
INSERT INTO consulta VALUES (6,5,'2021-04-20','13:00');
INSERT INTO consulta VALUES (4,4,'2020-10-22','19:30');
