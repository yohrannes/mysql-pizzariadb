CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_funcionario
  (
     id_funcionario   INTEGER auto_increment NOT NULL PRIMARY KEY,
     rg_funcionario   INTEGER,
     sal_funcionario  FLOAT,
     tel_funcionario  INTEGER,
     nome_funcionario VARCHAR(15),
     func_funcionario VARCHAR(15)
  )
engine= innodb
DEFAULT charset = utf8mb4;

CREATE TABLE tb_cliente
  (--
     id_cliente   INTEGER NOT NULL auto_increment PRIMARY KEY,
     nome_cliente VARCHAR(30),
     rua          VARCHAR(20),
     numero       INTEGER,
     bairro       VARCHAR(20),
     sexo         VARCHAR(10),
     cidade       VARCHAR(10),
     idade        INT
  )
engine= innodb
DEFAULT charset = utf8mb4;

CREATE TABLE tb_pagamento
  (
     id_pagamento   INT NOT NULL auto_increment PRIMARY KEY,
     form_pagamento VARCHAR(10),
     dt_pagamento   DATE,
     valor_pago     FLOAT
  )
engine= innodb
DEFAULT charset = utf8mb4;

CREATE TABLE tb_venda
  (
     id_cliente   INTEGER,
     id_venda     INT NOT NULL auto_increment PRIMARY KEY,
     -- constraint id_cliente foreign key (id_cliente) references tb_cliente (id_cliente), -- linkando id_cliente com a tb_vendas
     dt_venda     DATE,
     valor_venda  FLOAT,
     id_pizza     INT,
     -- constraint id_pizza foreign key (id_pizza) references tb_cardapio (id_pizza), -- linkando id_pizza com tb_cardapio
     id_pagamento INT
     -- constraint id_pagamento foreign key (id_pagamento) references tb_pagamento (id_pagamento)-- linkando id_pagamento com tb_cardapio
  )
engine= innodb
DEFAULT charset = utf8mb4;

CREATE TABLE tb_ingrediente
  (
     id_ingrediente   INT NOT NULL auto_increment PRIMARY KEY,
     nome_ingrediente VARCHAR(10)
  )
engine= innodb
DEFAULT charset = utf8mb4;

CREATE TABLE tb_cardapio
  (
     id_pizza       INTEGER NOT NULL auto_increment PRIMARY KEY,
     nome_pizzza    VARCHAR(10),
     tipo_pizzza    VARCHAR(10),
     id_ingrediente INT,
     -- constraint id_ingrediente foreign key (id_ingrediente) references tb_ingredientes (id_ingrediente), -- Linkando id_ingrediente com tb_ingredientes
     valor_pizza    FLOAT
  )
engine= innodb
DEFAULT charset = utf8mb4;

CREATE TABLE tb_entrega
  (
     id_entrega     INT NOT NULL auto_increment PRIMARY KEY,
     id_funcionario INTEGER,
     id_cliente     INTEGER,
     id_venda       INTEGER
  -- constraint id_funcionario foreign key (id_funcionario) references tb_funcionario (id_funcionario), -- Linkando id_funcionario com tb_funcionario
/* constraint id_cliente_segfk foreign key (id_cliente) references tb_cliente (id_cliente), Linkando id_cliente com tb_cliente obs: a chave estranjeira id_cliente já existe na tabela tb_venda, pos isso é preciso criar um nome diferente para esta chave, chamei fe id_cliente_segfk */
  -- constraint id_venda foreign key (id_venda) references tb_venda (id_venda) -- Linkando id_venda com tb_venda
  )
engine= innodb
DEFAULT charset = utf8mb4; 