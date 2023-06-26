	/* Estabelecimento de uma relação um para muitos na tabela tb_venda*/
ALTER TABLE tb_venda
  ADD FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id_cliente);

ALTER TABLE tb_venda
  ADD FOREIGN KEY (id_pizza) REFERENCES tb_cardapio(id_pizza);

ALTER TABLE tb_venda
  ADD FOREIGN KEY (id_pagamento) REFERENCES tb_pagamento(id_pagamento);

/* Estabelecimento de uma relação um para muitos na tabela tb_entrega*/
ALTER TABLE tb_entrega
  ADD FOREIGN KEY (id_funcionario) REFERENCES tb_funcionario(id_funcionario);

ALTER TABLE tb_entrega
  ADD CONSTRAINT fk_tb_entrega
  -- Nome da chave precisa ser diferente pois já exite uma estranjeira do mesmo tipo em tb_venda.
  FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente);
  
/* Estabelecimento de uma relação um para muitos na tabela tb_preparo */

ALTER TABLE tb_preparo
  ADD FOREIGN KEY (id_ingrediente) REFERENCES tb_ingrediente (id_ingrediente);

ALTER TABLE tb_preparo
  ADD FOREIGN KEY (id_pizza) REFERENCES tb_cardapio (id_pizza);
  
ALTER TABLE tb_preparo
  ADD FOREIGN KEY (id_borda) REFERENCES tb_cardapio (id_borda);

/* Estabelecimento de uma relação um para muitos na tabela tb_ingrediente */

ALTER TABLE tb_preparo
	ADD FOREIGN KEY (id_ingrediente) REFERENCES tb_ingrediente (id_ingrediente);
  
ALTER TABLE tb_borda
	ADD FOREIGN KEY (id_borda) REFERENCES tb_ingrediente (id_borda);

