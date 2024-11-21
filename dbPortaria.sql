-- apagar o banco de dados
drop database dbPortaria;
-- criar banco de dados
create database dbPortaria;
-- acessar o banco de dados
use dbPortaria;
-- criar tabelas

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13)unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key(codFunc));

create table tbClientes(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telCel char(10),
primary key(codCli));

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(50),
email varchar(50),
telefone char(10),
cnpj char(18) not null unique,
primary key(codForn));

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar (100) not null,
lote char(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key(codProd),
foreign key(codForn) references tbFornecedores(codForn));

create table tbusuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc) references tbFuncionarios(codFunc));

create table tbVendas(
codVend int not null auto_increment,
valor decimal(9,2),
dataVend date,
horaVend time,
quantidade int,
codUsu int not null,
codProd int not null,
codCli int not null,
primary key(codVend),
foreign key(codUsu) references tbusuarios(codUsu),
foreign key(codProd) references tbProdutos(codProd),
foreign key(codCli) references tbClientes(codCli));
 

desc tbFuncionarios;
desc tbUsuarios;
desc tbClientes;
desc tbFornecedores;
desc tbProdutos;
desc tbVendas;
 
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Leticia Fonseca','22.212.528-8','988.444.789-85','F',5600.90);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Lucas Santos','12.485.789-9','456.123.745-99','M',3500.20);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Maria Ferreira','12.456.756-0','444.654.746-15','F',4050.80);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Leonardo Mendes','13.500.196-2','450.474.456-25','M',5000.10);

insert into tbClientes(codCli,nome,email,telCel)
	values(1,'Joana Antunes','joana.antunes@gmail.com','98875-8532');
insert into tbClientes(codCli,nome,email,telCel)
	values(2,'Juliana Moura','juliana.moura@gmail.com','95575-3216');
insert into tbClientes(codCli,nome,email,telCel)
	values(3,'Kevin Ricardo', 'kevin.ricardo@gmail.com','96387-5469');
insert into tbClientes(codCli,nome,email,telCel)
	values(4,'Josue Silva','josue.silva@gmail.com','91125-8888');

insert into tbFornecedores(nome,email,telefone,cnpj)
	values('Armarinho Fernandez','sac@afernandez.com.br','98523-8745','48.076.228/0001-91');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('HortiFrut Fernando','sac@hfernando.com.br','91477-9512','42,489.814/0001-61');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('Assai Atacadista','sac@assaiatacadista.com.br','98875-9999','02.449.992/0001-64');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('Tenda Atacado','sac@tendaatacado.com.br','5508-4400','60.409.075/0001-52');

insert into tbUsuarios(nome,senha,codFunc)
	values('leticia.fonseca','123456',1);
insert into tbUsuarios(nome,senha,codFunc)
	values('lucas.santos','123456',2);
insert into tbUsuarios(nome,senha,codFunc)
	values('maria.ferreira','123456',3);
insert into tbUsuarios(nome,senha,codFunc)
	values('leonardo.mendes','123456',4);

insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Papel Sulfite','524515','2030/12/05','2024/11/11','11:46:00',10,25.30,1);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
    values('Bananas','447899','2024/11/30','2024/11/21','15:05:23',20,12.30,2);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
    values('Oleo','852465','2030/06/26','2024/11/09','16:23:32',60,6.20,4);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Papel higienico','321756','2025/10/15','2024/11/19','12:50:46',30,9.99,3);

insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(6.20,5,'2024/11/20','16:00:26:',4,3,1);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(12.50,10,'2024/11/19','14:14:14',1,2,3);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(9.99,15,'2025/11/18','18:30:52:',2,4,4);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(25.30,10,'2025/11/10','11:53:33:',3,1,2);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
	values(25.30,20,'2025/11/18','13:45:13',1,1,2);



	select * from tbFuncionarios;
	select * from tbUsuarios;
	select * from tbClientes;
	select * from tbFornecedores;
	select * from tbProdutos;
	select * from tbVendas;

-- inner join

select func.nome as 'Nome do funcionario',uso.nome as 'Nome de usuario' 
from tbUsuarios as uso inner join tbFuncionarios as func on uso.codFunc = func.codFunc
where func.codFunc = 2; 

select func.nome as 'Nome do funcionario',uso.nome as 'Nome de usuario' 
from tbUsuarios as uso inner join tbFuncionarios as func on uso.codFunc = func.codFunc
where func.nome like '%l%';