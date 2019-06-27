/* Comando para criar tabelas*/
create database Aluno; 
/* Comando para usar a tabela*/
use Aluno; 

/*Comando para criar as tabelas aulas*/ 
create table aulas( 
curso varchar(20),
professor varchar(20),
disciplina varchar(20)
);

create table alunos(
nome varchar(50),
matricula int(4)
);

/* Comando para inserir dados a tabela*/
insert into aulas value('Dança', 'Marcos Silva', 'Som');
insert into aulas value('TSI', 'Silva de Sá', 'Fundamentos');
insert into aulas value('TSI', 'Heitor', 'Programação');
insert into aulas value('TSI', 'Jefersson', 'Programação II');

/* Comando para inserir dados a tabela*/
insert into alunos value('Heitor Carlos', 1234);
insert into alunos value('Lucas Mateus', 4546);
insert into alunos value('Leticia Lima', 5555);
insert into alunos value('Maria Eduarda', 8575);
insert into alunos value('Maria Clara', null);
insert into alunos value('Mauricio Brasil', null);


/*Comando para ver as tabelas*/
show tables;

/*Comando para ver os dados inseridos na tabela*/
select curso, professor, disciplina from aulas;

select nome, matricula from alunos;

/* Comando para ver dados NULOS nas tabelas*/
select nome, matricula from alunos
where matricula is null;

/* Comando para ver dados NÃO NULOS nas tabelas*/
select nome, matricula from alunos
where matricula is not null;

/* Comando para ver dados especificos nas tabelas*/
select curso, professor, disciplina from aulas
where curso = 'TSI';

/*Comando para ver a quantidade de determindado dado*/
select curso, count(*) as "Quantidade de cursos"from aulas
group by curso;

/* ver colunas da tabela espeficica*/
desc aulas; 

/*Comando para deletar algum dado da tabela especifico*/
delete from aulas 
where curso = 'Dança';

/*Comando para fazer uma atualização na tabela */
update alunos
set matricula = 5682
where nome = 'Leticia Lima';