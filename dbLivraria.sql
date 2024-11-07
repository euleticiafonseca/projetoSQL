-- apagar o banco de dados
drop database dbLivraria;
-- criar banco de dados
create database dbLivraria;
-- acessar o banco de dados
use dbLivraria;
-- criar tabelas
create table tbAluno(
raAluno int,
nome varchar(45),
email varchar(45),
telefone varchar(45)
);
create table tbLivro(
ISBN int,
nome varchar(45),
autor varchar(45),
paginas varchar(45),
ALUNO_raAluno int,
COLABORADOR_idColaborador int
);
create table tbColaborador(
idColaborador int,
CPF varchar(45),
nome varchar(45),
email varchar(45),
cargo varchar(45)
);
create table tbEmprestimo(
idEmprestimo int,
dataEmprestimo date,
dataDevolucao date,
livroISBN varchar(45),
colaboradorCPF varchar(45),
COLABORADOR_idColaborador int
);
-- visualizando a estrutura das tabelas
desc tbAluno;
desc tbLivro;
desc tbColaborador;
desc tbEmprestimo;
