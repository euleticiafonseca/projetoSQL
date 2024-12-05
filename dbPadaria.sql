-- apagar o banco de dados
drop database dbPadaria;
-- criar banco de dados
create database dbPadaria;
-- acessar o banco de dados
use dbPadaria;
-- criar tabelas


-- Criação da tabela Funcionarios
create table tbFuncionarios(
codFunc int auto_increment,
nome varchar(50) not null,
rg char(13)unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key(codFunc));

 -- Criação da tabela Clientes
CREATE TABLE tbClientes(
codCli int auto_increment,
nome varchar(50) not null,
email varchar(50),
telCel char(10),
codCard varchar(6) not null,
primary key(codCli));

-- Criação da tabela Fornecedores
create table tbFornecedores(
codForn int auto_increment,
nome varchar(50) not null,
telCel char(10),
email varchar(50),
endereco varchar(50),
primary key(codForn));

-- Criação da tabela Produtos
create table tbProdutos(
codProd int auto_increment,
nome varchar(50) not null,
lote varchar(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key(codProd),
foreign key(codForn) references Fornecedores(codForn));

-- Criação da tabela Vendas
create table tbVendas(
codVend int auto_increment,
produto varchar(50),
valor decimal(9,2),
dataVend date,
horaVend time,
quantidade int,
formaPagamento varchar(50) not null,
codCli int,
codFunc int,
primary key(codVend),
foreign key(codCli) references Clientes(codCli),
foreign key(codFunc) references Funcionarios(codFunc));

-- Criação da tabela Itens_Venda
create table tbItensVenda(
codItens int auto_increment,
produto varchar(50),
quantidade int not null,
subtotal decimal(9,2) not null,
codVend int,
codProd int,
primary key(codItens),
foreign key(codVend) references Vendas(codVend),
foreign key(codProd) references Produtos(codProd));

-- Criação da tabela Estoque
create table tbEstoque(
quantidadeDisponivel int not null,
estoqueMinimo int not null,
codProd int,
foreign key(codProd) references Produtos(codProd));



desc tbFuncionarios;
desc tbClientes;
desc tbFornecedores;
desc tbProdutos;
desc tbVendas;
desc tbItensVenda;
desc tbEstoque;


insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Lucinda Maria','229.987.421-6','547.321.258-66','F',2569.66);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Raquel Mendes','688.544.321-1','847.658.326-47','F',2569.66);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Ygor Ricardo','245.327.111.9','641.258.697-11','M',2569.66);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Phelipe Soares','311.255.999-8','444.578.913-89','M',2569.66);

insert into tbClientes(nome,email,telCel,codCard)
	values('Maria Eduarda','maria.edu@outlook.com','98745-5213','C12345');
insert into tbClientes(nome,email,telCel,codCard)
	values('Lucas Carlos','lucassilva@gmail.com','95214-7888','C19825');
insert into tbClientes(nome,email,telCel,codCard)
	values('Miranda Sales','salesmiranda01@gmail.com','98645-2130','C64879');
insert into tbClientes(nome,email,telCel,codCard)
	values('Josue Messias','messias1234@gmail.com','98115-6522','C21030');
insert into tbClientes(nome,email,telCel,codCard)
	values('Lindomar Alves','lindomar45@outlook.com','98745-3269','C85214');
insert into tbClientes(nome,email,telCel,codCard)
	values('Grazy Mari','glacymari66@gmail.com','98874-6410','C42100');

insert into tbFornecedores(nome,telCel,email,endereco)
	values('FestPan Alimentos','2969-2498','Ecommerce@festpan.com.br','Rua Arroio Grande 455, Sao Paulo');
insert into tbFornecedores(nome,telCel,email,endereco)
	values('Nova Safra Food Service','2647-0682','sac@novasafra.com','Rua do Arbitro 157 (Vila Rui Barbosa), Sao Paulo');
insert into tbFornecedores(nome,telCel,email,endereco)
	values('MegaG Alimentos','5853-4000','sacmegaG@gmail.com','Av. Maria Coelho Aguiar 573,Sao Paulo');
insert into tbFornecedores(nome,telCel,email,endereco)
	values('Aquinos Pan','2279-4744','aquinospan@gmail.com','Milton Antonio Magalhaes F 246, Guarulhos, SP');
insert into tbFornecedores(nome,telCel,email,endereco)
	values('Atacado Uniao','5635-9025','marketing2@grupouniaosa.com.br','Avenida Interlagos 4237, Sao Paulo, SP');

insert into tbProdutos(nome,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Pao Frances','LF1234567890','2024/12/06','2024/12/05','08:15:33',100,0.40,1);
insert into tbProdutos(nome,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Pao de queijo','PQ9876543210','2024/12/10','2024/12/05','09:50:22',50,3.00,4);
insert into tbProdutos(nome,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Bolo de chocolate','BC5432167890','2024/12/20','2024/12/05','12:55:11',20,12.00,2);
insert into tbProdutos(nome,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Pao de milho','PM0987654321','2024/12/15','2024/12/05','14:00:15',80,2.00,3);
insert into tbProdutos(nome,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Torta de morango','TM1122334455','2024/12/18','2024/12/05','15:22:00',15,18.00,5);
insert into tbProdutos(nome,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Croissant','CR1230987654','2024/12/12','2024/12/05','11:50:22',40,2.50,1);

insert into tbVendas(produto,valor,dataVend,horaVend,quantidade,formaPagamento,codCli,codFunc)
	values('Torta de morango',18.00,'2024/12/06','12:33:25',1,'Dinheiro',5,3);
insert into Vendas(produto,valor,dataVend,horaVend,quantidade,formaPagamento,codCli,codFunc)
	values('Croissant',5.00,'2024/12/08','16:55:33',2,'Credito',2,1);
insert into tbVendas(produto,valor,dataVend,horaVend,quantidade,formaPagamento,codCli,codFunc)
	values('Bolo de chocolate',12.00,'2024/12/05','13:30:12',1,'Pix',4,2);
insert into tbVendas(produto,valor,dataVend,horaVend,quantidade,formaPagamento,codCli,codFunc)
	values('Pao de queijo',15.00,'2024/12/06','12:44:10',5,'Debito',3,4);
insert into tbVendas(produto,valor,dataVend,horaVend,quantidade,formaPagamento,codCli,codFunc)
	values('Pao Frances',6.00,'2024/12/07','09:10:25',15,'Debito',1,2);
insert into tbVendas(produto,valor,dataVend,horaVend,quantidade,formaPagamento,codCli,codFunc)
	values('Pao de milho',40.00,'2024/12/09','10:22:00',20,'Pix',6,3);

insert into tbItensVenda(produto,quantidade,subtotal,codVend,codProd)
	values('Pao Frances',15,6.00,5,1);
insert into tbItensVenda(produto,quantidade,subtotal,codVend,codProd)
	values('Pao de queijo',5,15.00,4,2);
insert into tbItensVenda(produto,quantidade,subtotal,codVend,codProd)
	values('Bolo de chocolate',1,12.00,3,3);
insert into tbItensVenda(produto,quantidade,subtotal,codVend,codProd)
	values('Pao de milho',20,40.00,6,4);
insert into tbItensVenda(produto,quantidade,subtotal,codVend,codProd)
	values('Torta de morango',1,18.00,1,5);
insert into tbItensVenda(produto,quantidade,subtotal,codVend,codProd)
	values('Croissant',2,5.00,2,6);

insert into tbEstoque(quantidadeDisponivel,estoqueMinimo,codProd)
	values(100,30,1);
insert into tbEstoque(quantidadeDisponivel,estoqueMinimo,codProd)
	values(50,20,2);
insert into tbEstoque(quantidadeDisponivel,estoqueMinimo,codProd)
	values(20,5,3);
insert into tbEstoque(quantidadeDisponivel,estoqueMinimo,codProd)
	values(40,15,6);
insert into tbEstoque(quantidadeDisponivel,estoqueMinimo,codProd)
	values(80,25,4);
insert into tbEstoque(quantidadeDisponivel,estoqueMinimo,codProd)
	values(10,3,5);	


	select * from tbFuncionarios;
	select * from tbClientes;
	select * from tbFornecedores;
	select * from tbProdutos;
	select * from tbVendas;
	select * from tbItensVenda;
	select * from tbEstoque;


-- Aumente em 6% o valor dos produtos cujos nomes se iniciem com a letra 'P'
update tbprodutos set preco = preco * 1.6 where nome like 'p%';