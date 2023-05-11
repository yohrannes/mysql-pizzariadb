#!/usr/bin/env sql

/* Estabelecimento de uma relação entre tabelas (chave estranjeira id_cliente de tb_cliente para
id_cliente de tb_venda). No momento da venda, precisamos deste dado do cliente*/
alter table tb_venda
add foreign key (id_cliente)
references tb_cliente(id_cliente);


/* Estabelecimento uma relação entre tabelas (id_ingrediente de tb_ingrediente para 
id_ingrediente de tb_cardapio. No cardápio precisa ter estes dados dos ingredientes*/
alter table tb_cardapio
add foreign key (id_ingrediente)
references tb_ingrediente(id_ingrediente);

-- Estabelecimento de uma relação entre tabelas id_pagamento com tb_cardapio
alter table tb_cardapio
add foreign key (id_ingrediente)
references tb_ingredientes(id_ingrediente);
-- Estabelecimento de uma relação entre tabelas id_ingrediente com tb_ingredientes

-- Estabelecimento de uma relação entre tabelas id_funcionario com tb_funcionario

/* Estabelecimento de uma relação entre tabelas id_cliente com tb_cliente obs: a chave estranjeira id_cliente já existe na tabela tb_venda, 
por isso é preciso criar um nome diferente para esta chave chamei de id_cliente_segfk */

-- Estabelecimento de uma relação entre tabelas id_venda com tb_venda