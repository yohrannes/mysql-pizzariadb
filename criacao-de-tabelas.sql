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

create table tb_vendas(
id_cliente integer,
id_venda int not null auto_increment primary key,
constraint id_cliente foreign key (id_cliente) references tb_cliente (id_cliente), -- linkando id_cliente com a tb_vendas
dt_venda date,
valor_venda float,
id_pizza int,
constraint id_pizza foreign key (id_pizza) references tb_cardapio (id_pizza), -- linkando id_pizza com tb_cardapio
id_pagamento int,
constraint id_pagamento foreign key (id_pagamento) references tb_pagamento (id_pagamento)-- linkando id_pagamento com tb_cardapio
)engine= Innodb default charset = utf8mb4;

create table tb_ingredientes(
id_ingrediente int not null auto_increment primary key,
nome_ingrediente varchar(10)
)engine= Innodb default charset = utf8mb4;

create table tb_cardapio(
id_pizza integer not null auto_increment primary key,
nome_pizzza varchar(10),
tipo_pizzza varchar(10),
id_ingrediente int,
constraint id_ingrediente foreign key (id_ingrediente) references tb_ingredientes (id_ingrediente), -- Linkando id_ingrediente com tb_ingredientes
valor_pizza float
)engine= Innodb default charset = utf8mb4;



show tables;


