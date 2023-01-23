create table normativ(
    sifra int not null primary key auto_increment,
    recept int,
    sastojak int,
    jedinica_mjere int,
    kolicina int
)engine=innodb;

create table sastojak(
    sifra int not null primary key auto_increment,
    naziv varchar(40)
)engine=innodb;

create table jedinica_mjere(
    sifra int not null primary key auto_increment,
    naziv varchar(40)
)engine=innodb;

create table recept(
    sifra int not null primary key auto_increment,
    naziv varchar(40) not null,
    opis varchar(20) not null,
    vrijeme_izrade varchar(20),
    kuhar int(11)
)engine=innodb;

create table kuhar(
    sifra int not null primary key auto_increment,
    ime varchar(20),
    prezime varchar(20),
    razina varchar(20)
)engine=innodb;

alter table recept add FOREIGN KEY (kuhar)
references kuhar(sifra);

alter table normativ add FOREIGN KEY (recept)
references recept(sifra);

alter table normativ add FOREIGN KEY (sastojak)
references sastojak(sifra);

alter table normativ add FOREIGN KEY (jedinica_mjere)
references jedinica_mjere(sifra);


/**
* Funkcija -- petina
* Ulazni parametar -- broj tipa integer
* RETURNS - funckija ako je sve okej vraća vrijednost tipa integer tj. vraća broj
*/
DELIMITER $$
CREATE FUNCTION petina(broj int) RETURNS int
begin
return broj/5;
end;
$$
DELIMITER ;

--Pozivanje funkcije
select petina(5);

--Šablona za kreiranje okidača use it
create trigger [trigger_name] 
[before | after]  
{insert | update | delete}  
on [table_name]  
[for each row]  
[trigger_body] 

/**
* Okidač -- kuhar_insert
* Pokreće se nakon unosa podataka u tablicu kuhar
* Za svaki 1 unos u tablicu kuhar unosi 1 unos u tablicu recept 
* new.sifra - sluzi za unosenje vanjskog kljuca za kuhara
*/
delimiter xD
create trigger kuhar_insert after insert on kuhar for each row  
begin
insert into recept(naziv, opis, vrijeme_izrade, kuhar) 
values ('Kuharov recept', 'fini', '', new.sifra);
end;

insert into kuhar(ime, prezime) values('hehe','hehe');

delimiter $$
create procedure brisiPosjetitelja(in idSastojka int )
begin
delete from posjeta where pacijent=spacijenta;
delete from posjetitelj where sifra not in (
    select distinct pacijent from posjeta
);
end;
$$
delimiter ;

insert into sastojak(naziv) values('hehe');

insert into normativ(recept, sastojak) values(1,1);

insert into normativ(recept, sastojak) values(2,1);

insert into normativ(recept, sastojak) values(3,1);



insert into normativ(recept, sastojak) values(1,2);

insert into normativ(recept, sastojak) values(1,3);

insert into normativ(recept) values(3);


delimiter $$
create procedure brisiSastojak(sifra int)
begin
delete from normativ where sastojak=sifra;
delete from recept where sifra not in (
   select distinct sastojak from normativ
);
end;
$$
delimiter ;


delimiter xD
create trigger, procedure, function naziv(parametri)
begin

end;
xD
delimiter ;
