-- apagar o banco de dados
drop database dbEscola;
-- criar banco de dados
create database dbEscola;
-- acessar o banco de dados
use dbEscola;
-- criar tabelas
create table tbCurso(
idCurso int,
nome varchar(45),
professor_idProfessor int
);
create table tbCursoAluno(
Curso_idCurso int,
Aluno_idAluno int
);
create table tbAluno(
idAluno int,
nome varchar(45),
email varchar(45),
CPF int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);
create table tbProfessor(
idProfessor int,
nome varchar(45),
email varchar(45),
CPF int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);
-- visualizando a estrutura das tabelas
desc tbCurso;
desc tbCursoAluno;
desc tbAluno;
desc tbProfessor;
