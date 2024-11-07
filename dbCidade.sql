-- apagar o banco de dados
drop database dbCidade;
-- criar banco de dados
create database dbCidade;
-- acessar banco de dados
use dbCidade; 
-- criar as tabelas
create table tbBairro(
id INT(11),
nome varchar(100),
cidade int(11)
);
create table tbEndereco(
id BIGINT(20),
bairro int(11),
tipo_local varchar(15),
logradouro varchar(128),
numero int(11),
complemento varchar(255)
);
create table tbCidade(
id INT(11),
nome varchar(38),
estado int(11)
);
create table tbEstado(
id INT(11),
sigla char(2)
);
create table tbServico(
id BIGINT(20),
endereco_id BIGINT(20),
solicitante_id BIGINT(20)
);
create table tbSolicitante(
id BIGINT(20),
endereco_id BIGINT(20)
);
create table tbPonto(
id BIGINT(20),
endereco_id BIGINT(20)
);
-- visualizando a estrutura das tabelas
desc tbBairro;
desc tbEndereco;
desc tbCidade;
desc tbEstado;
desc tbServico;
desc tbSolicitante;
desc tbPonto;