create database universidade;
show databases;
use universidade;

create table professor(
codProf int primary key,
nomeProf varchar(40) not null,
dataNasc date not null,
cpf char(11),
area varchar(30) not null
);

create table disciplina(
codDisc int primary key,
nomeDisc varchar(40) not null,
cargaHora varchar(10) not null
);

show databases;
create table ministra(
codProf int not null,
codDisc int not null,
primary key(codProf, codDisc),
foreign key(codProf) references professor(codProf),
foreign key(codDisc) references disciplina(codDisc)
);

alter table professor add formacao varchar(30);
alter table disciplina add ementa varchar(100);
