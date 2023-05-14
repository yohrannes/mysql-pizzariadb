#!/usr/bin/env sql

/* Estabelecimento de uma relação entre tabelas a na tabela tb_venda*/
alter table tb_venda
add foreign key (id_cliente)
references tb_cliente(id_cliente);

show create table tb_cliente;

SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE, COLUMN_DEFAULT
FROM information_schema.COLUMNS
WHERE TABLE_NAME IN ('tb_cliente', 'tb_venda', 'tb_entrega') AND COLUMN_NAME LIKE ('id_cliente');

alter table tb_venda
add foreign key (id_pizza)
references tb_cardapio(id_pizza);

alter table tb_venda
add foreign key (id_pagamento)
references tb_pagamento(id_pagamento);

/* Estabelecimento de uma relação entre tabelas a na tabela tb_cardapio*/

alter table tb_cardapio
add foreign key (id_ingrediente)
references tb_ingrediente(id_ingrediente);

/* Estabelecimento de uma relação entre tabelas a na tabela tb_entrega*/

alter table tb_entrega
add foreign key (id_funcionario)
references tb_funcionario(id_funcionario);

alter table tb_entrega
add foreign key (id_cliente) 
references tb_cliente (id_cliente);

/*
SET foreign_key_checks = 0;
SELECT CONCAT('ALTER TABLE ', TABLE_NAME, ' DROP FOREIGN KEY ', CONSTRAINT_NAME, ';') AS drop_statement
FROM information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_SCHEMA = 'nome_do_seu_banco_de_dados' AND REFERENCED_TABLE_NAME IS NOT NULL;
SET foreign_key_checks = 1;
*/