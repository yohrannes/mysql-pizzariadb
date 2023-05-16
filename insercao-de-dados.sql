/* Inserindo dados na tabela tb_cliente */
INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (1,
             'janaina',
             'liberdade',
             345,
             'parquedoslirios',
             'feminino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (2,
             'sergio',
             'jardimpaz',
             365,
             'pdlirios',
             'masculino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (3,
             'marcelo',
             'liberdade',
             618,
             'parquedosl',
             'masculino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (4,
             'augusto',
             'liberdade',
             584,
             'jdimpaz',
             'masculino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (5,
             'samuel',
             'iracema',
             618,
             'parquedosl',
             'masculino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (6,
             'wanderlei',
             'liberdade',
             500,
             'jdbrasilia',
             'masculino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (7,
             'isaque',
             'iracema',
             619,
             'parquedosl',
             'masculino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (8,
             'roberto',
             'cariris',
             745,
             'jdimpaz',
             'masculino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (9,
             'marcia',
             'pirituba',
             318,
             'parquedosl',
             'feminino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (10,
             'marilsa',
             'acarai',
             45,
             'liberdade',
             'feminino');

INSERT INTO tb_cliente
            (id_cliente,
             nome_cliente,
             rua,
             numero,
             bairro,
             sexo)
VALUES      (11,
             'fatima',
             'pirituba',
             519,
             'parquedosl',
             'feminino');

UPDATE tb_cliente
SET    cidade = 'americana'
WHERE  id_cliente = 1;

UPDATE tb_cliente
SET    cidade = 'americana'
WHERE  id_cliente = 2;

UPDATE tb_cliente
SET    cidade = 'americana'
WHERE  id_cliente = 3;

UPDATE tb_cliente
SET    cidade = 'americana'
WHERE  id_cliente = 4;

UPDATE tb_cliente
SET    cidade = 'americana'
WHERE  id_cliente = 5;

UPDATE tb_cliente
SET    cidade = 'santabarbara'
WHERE  id_cliente = 6;

UPDATE tb_cliente
SET    cidade = 'santabarbara'
WHERE  id_cliente = 7;

UPDATE tb_cliente
SET    cidade = 'santabarbara'
WHERE  id_cliente = 8;

UPDATE tb_cliente
SET    cidade = 'santabarbara'
WHERE  id_cliente = 9;

UPDATE tb_cliente
SET    cidade = 'santabarbara'
WHERE  id_cliente = 10;

UPDATE tb_cliente
SET    cidade = 'santabarbara'
WHERE  id_cliente = 11;

UPDATE tb_cliente
SET    idade = 23
WHERE  id_cliente = 1;

UPDATE tb_cliente
SET    idade = 24
WHERE  id_cliente = 2;

UPDATE tb_cliente
SET    idade = 25
WHERE  id_cliente = 3;

UPDATE tb_cliente
SET    idade = 36
WHERE  id_cliente = 4;

UPDATE tb_cliente
SET    idade = 26
WHERE  id_cliente = 5;

UPDATE tb_cliente
SET    idade = 27
WHERE  id_cliente = 6;

UPDATE tb_cliente
SET    idade = 35
WHERE  id_cliente = 7;

UPDATE tb_cliente
SET    idade = 42
WHERE  id_cliente = 8;

UPDATE tb_cliente
SET    idade = 40
WHERE  id_cliente = 9;

UPDATE tb_cliente
SET    idade = 32
WHERE  id_cliente = 10;

UPDATE tb_cliente
SET    idade = 38
WHERE  id_cliente = 11;

/* Inserindo dados na tabela tb_funcionario */
INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (1,
             'janaina',
             'recepcionista',
             571461497,
             1530.00,
             1992895779);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (3,
             'sergio',
             'recepcionista',
             575161497,
             1800.00,
             1992655779);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (4,
             'iracema',
             'pizzaiolo',
             571461497,
             1130.00,
             1992891879);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (5,
             'miquel',
             'gerente',
             571461497,
             1330.00,
             1992898779);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (6,
             'francisco',
             'motoboy',
             571461497,
             1030.00,
             1991895779);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (7,
             'paulo',
             'assistente',
             571461497,
             2030.00,
             1992818779);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (8,
             'timóteo',
             'garçon',
             571461497,
             1630.00,
             1992894179);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (9,
             'gustavo',
             'faxineiro',
             571461497,
             1730.00,
             1992848779);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (10,
             'josé',
             'vigia',
             571461497,
             1850.00,
             1992865779);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (11,
             'leandro',
             'dono',
             571461497,
             2300.00,
             1992848779);

INSERT INTO tb_funcionario
            (id_funcionario,
             nome_funcionario,
             func_funcionario,
             rg_funcionario,
             sal_funcionario,
             tel_funcionario)
VALUES      (12,
             'marcos',
             'garçon',
             571461497,
             2000.00,
             1998495779);

UPDATE tb_funcionario
SET    func_funcionario = 'recepcionista'
WHERE  id_funcionario = 2;

/* Inserindo dados na tabela tb_entrega */
UPDATE tb_entrega
SET    dt_entrega = '2018-02-20'
WHERE  id_entrega = 10;

UPDATE tb_entrega
SET    dt_entrega = '2018-03-20'
WHERE  id_entrega = 2;

UPDATE tb_entrega
SET    dt_entrega = '2018-04-20'
WHERE  id_entrega = 3;

UPDATE tb_entrega
SET    dt_entrega = '2018-05-10'
WHERE  id_entrega = 4;

UPDATE tb_entrega
SET    dt_entrega = '2018-06-19'
WHERE  id_entrega = 5;

UPDATE tb_entrega
SET    dt_entrega = '2018-07-18'
WHERE  id_entrega = 6;

UPDATE tb_entrega
SET    dt_entrega = '2018-08-16'
WHERE  id_entrega = 7;

UPDATE tb_entrega
SET    dt_entrega = '2018-09-20'
WHERE  id_entrega = 8;

UPDATE tb_entrega
SET    dt_entrega = '2018-12-15'
WHERE  id_entrega = 9;

UPDATE tb_entrega
SET    dt_entrega = '2018-02-20'
WHERE  id_entrega = 11;

/* Inserindo dados na tabela tb_ingrediente */

insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (12, 'parmesão');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (13, 'catupiry');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (14, 'frango');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (15, 'provolone');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (16, 'gorgonzola');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (17, 'lombo canadense');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (18, 'parmesão');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (19, 'palmito');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (20, 'presunto');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (21, 'ervilha');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (22, 'ovo');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (23, 'calabresa moida');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (24, 'milho');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (25, 'manjericão');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (26, 'alho');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (27, 'filé de tilápia');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (28, 'champignon');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (29, 'peito de peru');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (30, 'carne seca');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (31, 'ervilha');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (32, 'berinjela');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (33, 'alho poró');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (34, 'alcaparras');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (35, 'tomate seco');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (36, 'rúcula');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (37, 'escarola');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (38, 'brócolis');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (39, 'espinafre');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (40, 'peperone');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (41, 'creme de milho');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (42, 'camarão');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (43, 'bacalhau');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (44, 'aliche');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (45, 'chocolate ao leite');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (46, 'chocolate granulado');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (47, 'leite condensado');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (48, 'coco');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (49, 'canela');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (50, 'mel');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (51, 'açúcar');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (52, 'morango');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (53, 'chocolate');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (54, 'ameixa');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (55, 'banana');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (56, 'abacaxi');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (57, 'abacaxi');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (58, 'figo');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (59, 'pêssego');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (60, 'goiabada');
insert into tb_ingrediente (id_ingrediente, nome_ingrediente) values (61, 'ricota');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (1,
             'muçarela');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (2,
             'atum');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (3,
             'calabresa');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (4,
             'bacon');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (5,
             'requeijão');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (6,
             'tomate');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (7,
             'cebola');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (8,
             'brocolis');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (9,
             'banana');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (10,
             'chocolate');

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (11,
             'coco');

/* Inserindo dados na tabela tb_cardapio */
INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (1,
             'americana',
             'salgada',
             1,
             24.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (2,
             'bauru',
             'salgada',
             2,
             24.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (3,
             'espanhola',
             'salgada',
             3,
             24.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (4,
             'pretigio',
             'doce',
             11,
             24.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (5,
             'strogonoff',
             'salgada',
             5,
             24.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (6,
             'cheddar',
             'salgada',
             6,
             29.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (7,
             'banana',
             'doce',
             10,
             34.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (8,
             'frango',
             'salgada',
             8,
             34.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (9,
             'marguerita',
             'salgada',
             9,
             35.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (10,
             'portuguesa',
             'salgada',
             10,
             34.99);

INSERT INTO tb_cardapio
            (id_pizza,
             nome_pizza,
             tipo_pizza,
             id_ingrediente,
             valor_pizza)
VALUES      (11,
             'brigadeiro',
             'doce',
             9,
             24.99);

/* Inserindo dados na tabela tb_pagamento*/
INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (1,
             'cartao',
             150.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (2,
             'cartao',
             160.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (3,
             'cartao',
             180.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (4,
             'cartao',
             200.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (5,
             'dinheiro',
             125.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (6,
             'cartao',
             135.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (7,
             'cartao',
             140.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (8,
             'cartao',
             210.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (9,
             'dinheiro',
             142.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (10,
             'cartao',
             126.00);

INSERT INTO tb_pagamento
            (id_pagamento,
             form_pagamento,
             valor_pago)
VALUES      (11,
             'dinheiro',
             111.00);

UPDATE tb_pagamento
SET    dt_pagamento = '2006-04-20'
WHERE  id_pagamento = 1;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-03-13'
WHERE  id_pagamento = 2;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-03-14'
WHERE  id_pagamento = 3;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-03-30'
WHERE  id_pagamento = 4;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-02-16'
WHERE  id_pagamento = 5;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-06-15'
WHERE  id_pagamento = 6;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-06-17'
WHERE  id_pagamento = 7;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-06-18'
WHERE  id_pagamento = 8;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-07-19'
WHERE  id_pagamento = 9;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-08-21'
WHERE  id_pagamento = 10;

UPDATE tb_pagamento
SET    dt_pagamento = '2006-09-22'
WHERE  id_pagamento = 11;

/* Inserindo dados na tabela tb_venda */
INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (1,
             1,
             150.00,
             11,
             11); -- TABELA VENDIDOS

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (2,
             2,
             160.00,
             10,
             10);

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (3,
             3,
             180.00,
             9,
             9);

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (4,
             4,
             200.00,
             8,
             8);

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (5,
             5,
             125.00,
             7,
             7);

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (6,
             6,
             135.00,
             6,
             6);

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (7,
             7,
             140.00,
             5,
             5);

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (8,
             8,
             210.00,
             4,
             4);

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (9,
             9,
             142.00,
             3,
             3);

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (10,
             10,
             126.00,
             2,
             2);

INSERT INTO tb_venda
            (id_cliente,
             id_venda,
             valor_venda,
             id_pizza,
             id_pagamento)
VALUES      (11,
             11,
             111.00,
             1,
             1);

UPDATE tb_venda
SET    dt_venda = '2006-11-21'
WHERE  id_venda = 1;

UPDATE tb_venda
SET    dt_venda = '2006-12-20'
WHERE  id_venda = 2;

UPDATE tb_venda
SET    dt_venda = '2006-10-19'
WHERE  id_venda = 3;

UPDATE tb_venda
SET    dt_venda = '2006-02-08'
WHERE  id_venda = 4;

UPDATE tb_venda
SET    dt_venda = '2006-03-07'
WHERE  id_venda = 5;

UPDATE tb_venda
SET    dt_venda = '2006-05-06'
WHERE  id_venda = 6;

UPDATE tb_venda
SET    dt_venda = '2006-06-05'
WHERE  id_venda = 7;

UPDATE tb_venda
SET    dt_venda = '2006-07-04'
WHERE  id_venda = 8;

UPDATE tb_venda
SET    dt_venda = '2006-08-03'
WHERE  id_venda = 9;

UPDATE tb_venda
SET    dt_venda = '2006-08-02'
WHERE  id_venda = 10;

UPDATE tb_venda
SET    dt_venda = '2006-09-01'
WHERE  id_venda = 11;

/* Inserindo dados na tabela tb_entrega */
INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (1,
             6,
             1,
             1);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (2,
             6,
             2,
             2);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (3,
             6,
             3,
             3);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (4,
             6,
             4,
             4);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (5,
             6,
             5,
             5);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (6,
             6,
             6,
             6);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (7,
             6,
             7,
             7);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (8,
             6,
             8,
             8);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (9,
             6,
             9,
             9);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (10,
             6,
             10,
             10);

INSERT INTO tb_entrega
            (id_entrega,
             id_funcionario,
             id_cliente,
             id_venda)
VALUES      (11,
             6,
             11,
             11);

UPDATE tb_entrega
SET    dt_entrega = '2018-01-01'
WHERE  id_entrega = 1; 

INSERT INTO tb_ingrediente
            (id_ingrediente,
             nome_ingrediente)
VALUES      (8,
             'brocolis');



