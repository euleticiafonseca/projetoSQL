-- apagar o banco de dados
drop database dbEstacionamento;
-- criar banco de dados
create database dbEstacionamento;
-- acessar banco de dados
use dbEstacionamento; 
-- criar as tabelas
create table tbUsuarios(
codUsu int,
nome varchar(50),
senha varchar(12)
);
create table tbFuncionarios(
codFunc int,
nome varchar(50),
email varchar(50),
telefone char(10)
);
create table tbCarros(
codCar int,
nome varchar(50),
placa char(7),
cor varchar(20)
);
create table tbDiarias(
codDia int,
dataEntrada date,
horaEntrada time,
dataSaida date,
horaSaida time
);

-- visualizando a estrutura das tabelas
desc tbUsuarios;
desc tbFuncionarios;
desc tbCarros;
desc tbDiarias;

-- alterando estrutura das tabelas
alter table tbFuncionarios
add cpf char(14);

desc tbFuncionarios;

alter table tbFuncionarios
add salario decimal(9,2);

desc tbFuncionarios;