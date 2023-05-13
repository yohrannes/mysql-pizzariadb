#!/usr/bin/env sql

/* Estabelecimento de uma relação entre tabelas a na tabela tb_venda*/
alter table tb_venda
add foreign key (id_cliente)
references tb_cliente(id_cliente);

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
references tb_cliente (id_cliente)


drop database db_pizzaria;

show tables;