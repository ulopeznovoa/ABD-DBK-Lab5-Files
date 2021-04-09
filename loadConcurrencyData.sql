create database if not exists concurrency;

drop table if exists concurrency.variables;
create table concurrency.variables(name varchar(1), value int);

insert into concurrency.variables values ("X",0);
insert into concurrency.variables values ("Y",0);
insert into concurrency.variables values ("Z",0);
insert into concurrency.variables values ("A",0);
insert into concurrency.variables values ("B",0);
insert into concurrency.variables values ("C",0);
insert into concurrency.variables values ("D",0);
insert into concurrency.variables values ("E",0);
insert into concurrency.variables values ("F",0);
insert into concurrency.variables values ("T",0);

create user if not exists "concurrencyUser" identified by "dba-2021";
grant select,update on concurrency.variables to "concurrencyUser";
grant create routine, alter routine, execute on *.* to "concurrencyUser";
