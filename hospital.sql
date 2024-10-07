create database hospital;
show databases;
use hospital;

create table medico(
codMed int primary key,
nomeMed varchar(40) not null,
dataNasc date not null,
cpf char(11) not null,
cidade varchar(30) not null,
especialidade varchar(30) not null
);

create table paciente(
codPac int primary key,
nomePac varchar(40) not null,
dataNasc date not null,
cpf char(11), cidade varchar(30) not null
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
