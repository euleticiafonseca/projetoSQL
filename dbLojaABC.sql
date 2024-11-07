-- apagar o banco de dados
drop database dbLojaABC;
-- criar banco de dados
create database dbLojaABC;
-- acessar o banco de dados
use dbLojaABC;
-- criar tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(50),
email varchar(50),
cpf char(14),
endereco varchar(100),
cep char(9),
numero char(10),
bairro varchar(50),
cidade varchar(50),
estado varchar(2),
telefone char(10),
dataNascimento date,
salario decimal(9,2)
);

-- visualizando as tabelas
show tables;
-- visualizando a estrutura das tabelas
desc tbFuncionarios; 
-- inserir registros no banco de dados 
insert into tbFuncionarios(codFun,nome,email,cpf,endereco,cep,numero,bairro,cidade,estado,telefone,dataNascimento,salario)
	values(1,'Liam Payne','luan.12@gmail.com','214.486.269-58','Rua Matilda','04429-290','888','Vila Mariana','São Paulo','SP',
		'93144-1115','2000/05/04', 2500.60);

-- visualizar os registros das tabelas
select * from tbFuncionarios;