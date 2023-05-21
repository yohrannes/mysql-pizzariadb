/* Excliur todas as chaves estrangeiras de uma base de dados */
SET foreign_key_checks = 0;
SELECT CONCAT('ALTER TABLE ', TABLE_NAME, ' DROP FOREIGN KEY ', CONSTRAINT_NAME, ';') AS drop_statement
FROM information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_SCHEMA = 'nome_do_seu_banco_de_dados' AND REFERENCED_TABLE_NAME IS NOT NULL;
SET foreign_key_checks = 1;

/* Excluir determinada coluna de tabela */
alter table tb_cardapio
drop column id_ingrediente;

/* Excluir determinada chave estrangeira de tabela */
alter table tb_cardapio
drop foreign key tb_cardapio_ibfk_2;

/* Todas as pizzas que iniciam com a */
use db_pizzaria;
select * from tb_cardapio;
select nome_pizza from tb_cardapio where nome_pizza regexp '^a';
show tables;

/* Exerícios */

-- A) Totalize os clientes cadastrados
select max (id_cliente) from tb_cliente;
 
-- B)Exibir pizzas,ingredientes,valor do cardapio agrupadas por doce ou salgada
select nome_pizza, valor_pizza from tb_cardapio;
select * from tb_cardapio;



-- C)Mostrar o total de pizzas vendidas por data
select*from tb_pagamento;

-- D)Total de vendas por periodo
select*from tb_venda;

-- E)Totalize os pagamentos realizados por período e forma de pagamento
select dt_pagamento, id_pagamento, valor_pago, form_pagamento from tb_pagamento order by dt_pagamento;
select form_pagamento, id_pagamento, valor_pago, dt_pagamento from tb_pagamento order by form_pagamento;

-- F)Totalize por peíodo os pedidos entrega por motoboy
select dt_entrega, id_venda, id_funcionario, id_entrega, id_cliente from tb_entrega order by dt_entrega;

-- G)Exibir pizzas que possuem um determinado ingrediente Ex:Chanpignon
select*from tb_cardapio;
select nome_pizza, tipo_pizza, id_ingrediente from tb_cardapio order by id_ingrediente;
select nome_pizza, tipo_pizza, id_ingrediente from tb_cardapio where id_ingrediente = 10;