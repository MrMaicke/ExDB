create database Lumin;

use Lumin

create table Usuario(
	id int primary key identity,
	nome varchar(120),
	email varchar(120) unique,
	senha varchar(15),
	telefone varchar(15)
);

create table Postagem(
	id int primary key identity,
	descricao varchar(300),

	Usuario_id int,
	foreign key (Usuario_id) references Usuario(id)
);

create table Curtidas(
	id int primary key identity,
	Horario datetime,

	Usuario_id int,
	foreign key (Usuario_id) references Usuario(id),
	
	Tipo_id int,
	foreign key (Tipo_id) references tipoPrestador(id)
);

create table tipoPrestador(
	id int primary key identity,
	Tipo varchar(9)
);

create table prestadorDeServicos(
	id int primary key identity,
	Identificador int,
	Certificados varchar(200),

	Tipo_id int,
	foreign key (Tipo_id) references tipoPrestador(id)
);






-- drop table Postagem;