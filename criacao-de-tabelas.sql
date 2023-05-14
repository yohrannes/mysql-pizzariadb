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
  (
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
     dt_venda     DATE,
     valor_venda  FLOAT,
     id_pizza     INT,
     id_pagamento INT
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
  )
engine= innodb
DEFAULT charset = utf8mb4; 