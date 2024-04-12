create database pizzaria;

create table tb_funcionario (--
id_funcionario integer auto_increment not null primary key,
rg_funcionario integer,
sal_funcionario float,
tel_funcionario integer,
nome_funcionario varchar(15),
func_funcionario varchar(15)
)engine= Innodb default charset =utf8;
alter table tb_funcionario add func_funcionario varchar(15);

create table tb_cliente(--
id_cliente integer not null auto_increment primary key,
nome_cliente varchar(15),
rua varchar(10),
numero integer,
bairro varchar(10)
)engine= Innodb default charset =utf8;
alter table tb_cliente add sexo varchar(10);
alter table tb_cliente add cidade varchar(10);
alter table tb_cliente add idade int;

create table tb_venda(--
id_cliente integer,
id_venda int not null auto_increment primary key,
CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente)
)engine= Innodb default charset =utf8;

create table tb_ingrediente(
id_ingrediente int not null auto_increment primary key,
nome_ingrediente varchar(10)
);

create table tb_cardapio(
id_pizza integer not null auto_increment primary key,
nome_pizza varchar(10),
tipo_pizza varchar(10)
)engine= Innodb default charset =utf8;

alter table tb_cardapio add id_ingrediente int;
alter table tb_cardapio add foreign key (id_ingrediente) references tb_ingrediente (id_ingrediente);
alter table tb_cardapio add valor_pizza float;
describe tb_cardapio;


create table tb_pagamento(
id_pagamento int not null auto_increment primary key,
form_pagamento varchar(10)
)engine= Innodb default charset =utf8;
alter table tb_pagamento ADD dt_pagamento date;
alter table tb_pagamento add valor_pago float;

alter table tb_venda add dt_venda date;
alter table tb_venda add valor_venda float;
alter table tb_venda add id_pizza int;
alter table tb_venda add foreign key (id_pizza) references tb_cardapio (id_pizza);
alter table tb_venda add id_pagamento int;
alter table tb_venda add foreign key (id_pagamento) references tb_pagamento (id_pagamento);

create table tb_entrega(
id_entrega int not null auto_increment primary key
id_funcionario integer,
id_cliente integer,
id_venda integer
CONSTRAINT id_funcionario FOREIGN KEY (id_funcionario) REFERENCES tb_funcionario (id_funcionario)
CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente), -- relacionar com cliente e funcionário
CONSTRAINT id_venda FOREIGN KEY (id_venda) REFERENCES tb_venda (id_venda)
)engine= Innodb default charset =utf8;


-- Relacionando tb_entrega com a tb_funcionario
alter table tb_entrega add id_funcionario int;
alter table tb_entrega
add foreign key (id_funcionario)
references tb_funcionario(id_funcionario);
-- Relacionando a tb_antrega com a tb_cliente
alter table tb_entrega add id_cliente int;
alter table tb_entrega
add foreign key (id_cliente)
references tb_cliente(id_cliente);
-- Relacionando tb_entrege com tb_venda
alter table tb_entrega add id_venda int;
alter table tb_entrega
add foreign key (id_venda)
references tb_venda(id_venda);

--FEITO
-- Criando datas de entrega
select*from tb_entrega;
alter table tb_entrega add dt_entrega date;
update tb_entrega set dt_entrega = '2018-02-20' where id_entrega =10;
update tb_entrega set dt_entrega = '2018-03-20' where id_entrega =2;
update tb_entrega set dt_entrega = '2018-04-20' where id_entrega =3;
update tb_entrega set dt_entrega = '2018-05-10' where id_entrega =4;
update tb_entrega set dt_entrega = '2018-06-19' where id_entrega =5;
update tb_entrega set dt_entrega = '2018-07-18' where id_entrega =6;
update tb_entrega set dt_entrega = '2018-08-16' where id_entrega =7;
update tb_entrega set dt_entrega = '2018-09-20' where id_entrega =8;
update tb_entrega set dt_entrega = '2018-12-15' where id_entrega =9;
update tb_entrega set dt_entrega = '2018-02-20' where id_entrega =11;

-- FEITO
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (1, 'janaina','recepcionista',571461497,1530.00,1992895779);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (3, 'sergio','recepcionista', 575161497,1800.00,1992655779);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (4, 'iracema','pizzaiolo', 571461497,1130.00,1992891879);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (5, 'miquel','gerente', 571461497,1330.00,1992898779);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (6, 'francisco','motoboy', 571461497,1030.00,1991895779);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (7, 'paulo','assistente', 571461497,2030.00,1992818779);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (8, 'timóteo','garçon', 571461497,1630.00,1992894179);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (9, 'gustavo','faxineiro', 571461497,1730.00,1992848779);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (10, 'josé','vigia', 571461497,1850.00,1992865779);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (11, 'leandro','dono', 571461497,2300.00,1992848779);
insert into tb_funcionario(id_funcionario,nome_funcionario,func_funcionario, rg_funcionario, sal_funcionario,tel_funcionario) values (12, 'marcos','garçon', 571461497,2000.00,1998495779);
update tb_funcionario set func_funcionario = 'recepcionista' where id_funcionario=2;


-- FEITO
select* from tb_venda;
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (1,1,150.00,11,11);-- TABELA VENDIDOS
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (2,2,160.00,10,10);
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (3,3,180.00,9,9);
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (4,4,200.00,8,8);
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (5,5,125.00,7,7);
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (6,6,135.00,6,6);
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (7,7,140.00,5,5);
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (8,8,210.00,4,4);
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (9,9,142.00,3,3);
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (10,10,126.00,2,2);
insert into tb_venda(id_cliente,id_venda,valor_venda,id_pizza,id_pagamento) values (11,11,111.00,1,1);
update tb_venda set dt_venda = '2006-11-21' where id_venda=1;
update tb_venda set dt_venda = '2006-12-20' where id_venda=2;
update tb_venda set dt_venda = '2006-10-19' where id_venda=3;
update tb_venda set dt_venda = '2006-02-08' where id_venda=4;
update tb_venda set dt_venda = '2006-03-07' where id_venda=5;
update tb_venda set dt_venda = '2006-05-06' where id_venda=6;
update tb_venda set dt_venda = '2006-06-05' where id_venda=7;
update tb_venda set dt_venda = '2006-07-04' where id_venda=8;
update tb_venda set dt_venda = '2006-08-03' where id_venda=9;
update tb_venda set dt_venda = '2006-08-02' where id_venda=10;
update tb_venda set dt_venda = '2006-09-01' where id_venda=11;



-- FEITO
select*from tb_cardapio;
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (1,'americana','salgada',1,24.99);-- TABELA CARDAPIO
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (2,'bauru','salgada',2,24.99);
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (3,'espanhola','salgada',3,24.99);
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (4,'pretigio','doce',11,24.99);
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (5,'strogonoff','salgada',5,24.99);
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (6,'cheddar','salgada',6,29.99);
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (7,'banana','doce',10,34.99);
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (8,'frango','salgada',8,34.99);
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (9,'marguerita','salgada',9,35.99);
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (10,'portuguesa','salgada',10,34.99);
insert into tb_cardapio (id_pizza,nome_pizza,tipo_pizza,id_ingrediente,valor_pizza) values (11,'brigadeiro','doce',9,24.99);


-- FEITO
select*from tb_ingrediente;
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (1,'muçarela');-- TABELA INGREDIENTES
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (2,'atum');
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (3,'calabresa');
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (4,'bacon');
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (5,'requeijão');
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (6,'tomate');
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (7,'cebola');
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (8,'brocolis');
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (9,'banana');
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (10,'chocolate');
insert into tb_ingrediente(id_ingrediente,nome_ingrediente) values (11,'coco');


-- FEITO
select*from tb_pagamento;
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (1,'cartao',150.00); -- TABELA PAGAMENTO
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (2,'cartao',160.00);
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (3,'cartao',180.00);
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (4,'cartao',200.00);
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (5,'dinheiro',125.00);
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (6,'cartao',135.00);
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (7,'cartao',140.00);
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (8,'cartao',210.00);
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (9,'dinheiro',142.00);
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (10,'cartao',126.00);
insert into tb_pagamento (id_pagamento,form_pagamento,valor_pago) values (11,'dinheiro',111.00);
update tb_pagamento set dt_pagamento = '2006-04-20' where id_pagamento = 1;
update tb_pagamento set dt_pagamento = '2006-03-13' where id_pagamento = 2;
update tb_pagamento set dt_pagamento = '2006-03-14' where id_pagamento = 3;
update tb_pagamento set dt_pagamento = '2006-03-30' where id_pagamento = 4;
update tb_pagamento set dt_pagamento = '2006-02-16' where id_pagamento = 5;
update tb_pagamento set dt_pagamento = '2006-06-15' where id_pagamento = 6;
update tb_pagamento set dt_pagamento = '2006-06-17' where id_pagamento = 7;
update tb_pagamento set dt_pagamento = '2006-06-18' where id_pagamento = 8;
update tb_pagamento set dt_pagamento = '2006-07-19' where id_pagamento = 9;
update tb_pagamento set dt_pagamento = '2006-08-21' where id_pagamento = 10;
update tb_pagamento set dt_pagamento = '2006-09-22' where id_pagamento = 11;



-- FEITO
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (1,'janaina','liberdade',345,'parquedoslirios','feminino'); -- TABELA CLIENTE
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (2,'sergio','jardimpaz',365,'pdlirios','masculino');
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (3,'marcelo','liberdade',618,'parquedosl','masculino');
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (4,'augusto','liberdade',584,'jdimpaz','masculino');
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (5,'samuel','iracema',618,'parquedosl','masculino');
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (6,'wanderlei','liberdade',500,'jdbrasilia','masculino');
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (7,'isaque','iracema',619,'parquedosl','masculino');
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (8,'roberto','cariris',745,'jdimpaz','masculino');
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (9,'marcia','pirituba',318,'parquedosl','feminino');
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (10,'marilsa','acarai',45,'liberdade','feminino');
insert into tb_cliente (id_cliente,nome_cliente,rua,numero,bairro,sexo) values (11,'fatima','pirituba',519,'parquedosl','feminino');
update tb_cliente set cidade = 'americana' where id_cliente =1;
update tb_cliente set cidade = 'americana' where id_cliente =2;
update tb_cliente set cidade = 'americana' where id_cliente =3;
update tb_cliente set cidade = 'americana' where id_cliente =4;
update tb_cliente set cidade = 'americana' where id_cliente =5;
update tb_cliente set cidade = 'santabarbara' where id_cliente =6;
update tb_cliente set cidade = 'santabarbara' where id_cliente =7;
update tb_cliente set cidade = 'santabarbara' where id_cliente =8;
update tb_cliente set cidade = 'santabarbara' where id_cliente =9;
update tb_cliente set cidade = 'santabarbara' where id_cliente =10;
update tb_cliente set cidade = 'santabarbara' where id_cliente =11;
update tb_cliente set idade = 23 where id_cliente =1;
update tb_cliente set idade = 24 where id_cliente =2;
update tb_cliente set idade = 25 where id_cliente =3;
update tb_cliente set idade = 36 where id_cliente =4;
update tb_cliente set idade = 26 where id_cliente =5;
update tb_cliente set idade = 27 where id_cliente =6;
update tb_cliente set idade = 35 where id_cliente =7;
update tb_cliente set idade = 42 where id_cliente =8;
update tb_cliente set idade = 40 where id_cliente =9;
update tb_cliente set idade = 32 where id_cliente =10;
update tb_cliente set idade = 38 where id_cliente =11;



select*from tb_entrega;
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (1,6,1,1); -- TABELA ENTREGA
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (2,6,2,2);
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (3,6,3,3);
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (4,6,4,4);
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (5,6,5,5);
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (6,6,6,6);
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (7,6,7,7);
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (8,6,8,8);
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (9,6,9,9);
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (10,6,10,10);
insert into tb_entrega (id_entrega,id_funcionario,id_cliente,id_venda) values (11,6,11,11);
update tb_entrega set dt_entrega = '2018-01-01' where id_entrega =1;

