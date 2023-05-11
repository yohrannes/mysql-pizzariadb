#!/usr/bin/env sql

create table tb_funcionario(
id_funcionario integer auto_increment not null primary key,
rg_funcionario integer,
sal_funcionario float,
tel_funcionario integer,
nome_funcionario varchar(15),
func_funcionario varchar(15)
)engine= Innodb default charset = utf8mb4;

create table tb_cliente(--
id_cliente integer not null auto_increment primary key,
nome_cliente varchar(30),
rua varchar(20),
numero integer,
bairro varchar(20),
sexo varchar(10),
cidade varchar(10),
idade int
)engine= Innodb default charset = utf8mb4;

create table tb_pagamento(
id_pagamento int not null auto_increment primary key,
form_pagamento varchar(10),
dt_pagamento date,
valor_pago float
)engine= Innodb default charset = utf8mb4;

create table tb_venda(
id_cliente integer,
id_venda int not null auto_increment primary key,
-- constraint id_cliente foreign key (id_cliente) references tb_cliente (id_cliente), -- linkando id_cliente com a tb_vendas
dt_venda date,
valor_venda float,
id_pizza int,
-- constraint id_pizza foreign key (id_pizza) references tb_cardapio (id_pizza), -- linkando id_pizza com tb_cardapio
id_pagamento int
-- constraint id_pagamento foreign key (id_pagamento) references tb_pagamento (id_pagamento)-- linkando id_pagamento com tb_cardapio
)engine= Innodb default charset = utf8mb4;

create table tb_ingrediente(
id_ingrediente int not null auto_increment primary key,
nome_ingrediente varchar(10)
)engine= Innodb default charset = utf8mb4;

create table tb_cardapio(
id_pizza integer not null auto_increment primary key,
nome_pizzza varchar(10),
tipo_pizzza varchar(10),
id_ingrediente int,
-- constraint id_ingrediente foreign key (id_ingrediente) references tb_ingredientes (id_ingrediente), -- Linkando id_ingrediente com tb_ingredientes
valor_pizza float
)engine= Innodb default charset = utf8mb4;

create table tb_entrega(
id_entrega int not null auto_increment primary key,
id_funcionario integer,
id_cliente integer,
id_venda integer
-- constraint id_funcionario foreign key (id_funcionario) references tb_funcionario (id_funcionario), -- Linkando id_funcionario com tb_funcionario
/* constraint id_cliente_segfk foreign key (id_cliente) references tb_cliente (id_cliente), Linkando id_cliente com tb_cliente obs: a chave estranjeira id_cliente já existe na tabela tb_venda, pos isso é preciso criar um nome diferente para esta chave, chamei fe id_cliente_segfk */
-- constraint id_venda foreign key (id_venda) references tb_venda (id_venda) -- Linkando id_venda com tb_venda
)engine= Innodb default charset = utf8mb4;