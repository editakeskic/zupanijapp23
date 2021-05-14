drop database if exists zupanijapp23;
create database zupanijapp23;
use zupanijapp23;

create table zupanija(
	sifra int(11) not null primary key auto_increment,
	naziv varchar(50) not null,
	zupan int not null
);

create table zupan(
	sifra int(11) not null primary key auto_increment,
	ime varchar(50) not null,
	prezime varchar(50) not null
);

create table opcina(
	sifra int(11) not null primary key auto_increment,
	zupanija int not null,
	naziv varchar(50) not null
);

create table mjesto(
	sifra int(11) not null primary key auto_increment,
	opcina int not null,
	naziv varchar(50) not null
);

