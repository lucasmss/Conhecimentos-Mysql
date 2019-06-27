use projeto;
insert into cliente value('Lucas Silva', 'M', '54875134519');
insert into cliente value('Maria Betania', 'F', '85965874521');
insert into cliente value('Betania Marta', 'F', '85965877851');

desc dados;

show tables;

insert into dados value('Java', 'Programação', 148);
insert into dados value('Mysql', 'Programação', 448);
insert into dados value('JavaScript', 'Programação', 798);
insert into dados value('JavaScript', null, 589);

select nome, sexo, CPF from cliente
where sexo = 'M' and CPF like '%8';

select curso, aulas, matricula from dados
where aulas is not null;

select curso, aulas, matricula from dados;

select count(*) from cliente;

select count(*) from cliente;

select sexo , count(*) as "Quantidade de clientes" from cliente
group by sexo;

update cliente 
set sexo = 'F' 
where nome = 'Maria Eduarda';

delete from cliente
where nome = 'Lucas Silva';

select nome, sexo, CPF from cliente;

