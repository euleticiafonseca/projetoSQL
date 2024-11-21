-- apagar o banco de dados
drop database dbLoterica;
-- criar banco de dados
create database dbLoterica;
-- acessar o banco de dados
use dbLoterica;
-- criar tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(9),
cpf char(14),
idade int,
salario decimal(9,2));
 
-- inserindo registros nas tabelas
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)
	values(1,'Paula Antunes da Silva','paula.asilva@hotmail.com','94521-7852','253.254.258-77', '52', 2500);
-- visualizando os registros das tabelas
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)
		values(2,'Roger Miranda','roger.miranda@gmail.com','98546-4175','369.417.587-58', '45', 2600);
	insert into tbFuncionarios(nome,email,idade,salario)
		values('Yuri Rodrigues', 'yuri.rodrigues@gmail.com', '25', 1800);
	insert into tbFuncionarios(codFunc,email,cpf)
		values(5,'fernando.ccunha','524.652.574-88');
		
--- visualizando estrutura das tabelas
desc tbFuncionarios;
--- visualizando registro das tabelas
select * from tbFuncionarios;