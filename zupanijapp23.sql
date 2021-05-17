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

alter table zupanija add foreign key (zupan) references zupan(sifra);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

alter table mjesto add foreign key (opcina) references opcina(sifra);

show tables;

select * from zupan;

#1-3
insert into zupan(ime,prezime) values
('Ivo','Ivić'),
('Ante','Antić'),
('Ana','Ančić');

select * from zupanija;

#1-3
insert into zupanija(zupan,naziv) values
(2,'Osječko-baranjska'),
(1,'Vukovarsko-srijemska'),
(3,'Istarska');

select * from opcina;

#1-6
insert into opcina(zupanija,naziv) values
(1,'Osijek'),
(2,'Vinkovci'),
(2,'Vukovar'),
(3,'Poreč'),
(1,'Đakovo'),
(3,'Rovinj');

select * from mjesto;

#1-12
insert into mjesto(opcina,naziv) values
(1,'Brijest'),
(1,'Tvrđavica'),
(2,'Vinkovci'),
(2,'Mirkovci'),
(3,'Vukovar'),
(3,'Grabovo'),
(4,'Poreč'),
(4,'Veleniki'),
(5,'Đakovo'),
(5,'Piškorevci'),
(6,'Rovinj'),
(6,'Rovinjsko selo');

update mjesto set naziv='Briješće'
where sifra=1;

update mjesto set naziv='Đurđanci'
where sifra=10;

update mjesto set naziv='Novi Perkovci'
where sifra=9;

update mjesto set naziv='Vrvari'
where sifra=8;

update mjesto set naziv='Nova Vas'
where sifra=7;


delete from mjesto where sifra>8;

delete from opcina where sifra>4;

