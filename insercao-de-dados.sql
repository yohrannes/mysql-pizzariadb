
INSERT INTO `tb_cardapio` 
VALUES (1,'americana','salgada',24.99),
(2,'bauru','salgada',24.99),
(3,'espanhola','salgada',24.99),
(4,'prestigio','doce',24.99),
(5,'strogonoff','salgada',24.99),
(6,'cheddar','salgada',29.99),
(7,'banana','doce',34.99),
(8,'frango','salgada',34.99),
(9,'marguerita','salgada',35.99),
(10,'portuguesa','salgada',34.99),
(11,'brigadeiro','doce',24.99);

INSERT INTO `tb_cliente` 
VALUES (1,'janaina','liberdade',345,'parquedoslirios','feminino','americana',23),
(2,'sergio','jardimpaz',365,'pdlirios','masculino','americana',NULL),
(3,'marcelo','liberdade',618,'parquedosl','masculino','americana',NULL),
(4,'augusto','liberdade',584,'jdimpaz','masculino','americana',NULL),
(5,'samuel','iracema',618,'parquedosl','masculino','americana',NULL),
(6,'wanderlei','liberdade',500,'jdbrasilia','masculino','santabarbara',NULL),
(7,'isaque','iracema',619,'parquedosl','masculino',NULL,NULL),
(8,'roberto','cariris',745,'jdimpaz','masculino',NULL,NULL),
(9,'marcia','pirituba',318,'parquedosl','feminino',NULL,NULL),
(10,'marilsa','acarai',45,'liberdade','feminino',NULL,NULL),
(11,'fatima','pirituba',519,'parquedosl','feminino',NULL,NULL);

INSERT INTO `tb_entrega` 
VALUES (1,6,1,1,'2018-01-01'),
(2,6,2,2,NULL),
(3,6,3,3,NULL),
(4,6,4,4,NULL),
(5,6,5,5,NULL),
(6,6,6,6,NULL),
(7,6,7,7,NULL),
(8,6,8,8,NULL),
(9,6,9,9,NULL),
(10,6,10,10,NULL),
(11,6,11,11,NULL);

INSERT INTO `tb_funcionario` 
VALUES (1,571461497,1530,1992895779,'janaina','recepcionista'),
(3,575161497,1800,1992655779,'sergio','recepcionista'),
(4,571461497,1130,1992891879,'iracema','pizzaiolo'),
(5,571461497,1330,1992898779,'miquel','gerente'),
(6,571461497,1030,1991895779,'francisco','motoboy'),
(7,571461497,2030,1992818779,'paulo','assistente'),
(8,571461497,1630,1992894179,'timóteo','garçon'),
(9,571461497,1730,1992848779,'gustavo','faxineiro'),
(10,571461497,1850,1992865779,'josé','vigia'),
(11,571461497,2300,1992848779,'leandro','dono'),
(12,571461497,2000,1998495779,'marcos','garçon');

INSERT INTO `tb_ingrediente` 
VALUES (1,'muçarela'),(2,'atum'),(3,'calabresa'),(4,'bacon'),(5,'requeijão'),(6,'tomate'),(7,'cebola'),(8,'brocolis'),(9,'banana'),(10,'chocolate'),(11,'coco'),(12,'parmesão'),(13,'catupiry'),(14,'frango'),(15,'provolone'),(16,'gorgonzola'),(17,'lombo canadense'),(18,'parmesão'),(19,'palmito'),(20,'presunto'),(21,'ervilha'),(22,'ovo'),(23,'calabresa moida'),(24,'milho'),(25,'manjericão'),(26,'alho'),(27,'filé de tilápia'),(28,'champignon'),(29,'peito de peru'),(30,'carne seca'),(31,'ervilha'),(32,'berinjela'),(33,'alho poró'),(34,'alcaparras'),(35,'tomate seco'),(36,'rúcula'),(37,'escarola'),(38,'brócolis'),(39,'espinafre'),(40,'peperone'),(41,'creme de milho'),(42,'ricota'),(43,'bacalhau'),(44,'aliche'),(45,'chocolate ao leite'),(46,'chocolate granulado'),(47,'leite condensado'),(48,'coco'),(49,'canela'),(50,'mel'),(51,'açúcar'),(52,'morango'),(53,'chocolate'),(54,'ameixa'),(55,'banana'),(56,'abacaxi'),(57,'abacaxi'),(58,'figo'),(59,'pêssego'),(60,'goiabada'),(61,'ricota');

INSERT INTO `tb_pagamento` 
VALUES (1,'cartao','2006-04-20',150),
(2,'cartao','2006-03-13',160),
(3,'cartao','2006-03-14',180),
(4,'cartao','2006-03-30',200),
(5,'dinheiro','2006-02-16',125),
(6,'cartao','2006-06-15',135),
(7,'cartao','2006-06-17',140),
(8,'cartao','2006-06-18',210),
(9,'dinheiro','2006-07-19',142),
(10,'cartao','2006-08-21',126),
(11,'dinheiro','2006-09-22',111);

INSERT INTO `tb_venda` 
VALUES (1,1,'2006-11-21',150,11,11),
(2,2,'2006-12-20',160,10,10),
(3,3,'2006-10-19',180,9,9),
(4,4,'2006-02-08',200,8,8),
(5,5,'2006-03-07',125,7,7),
(6,6,'2006-05-06',135,6,6),
(7,7,'2006-06-05',140,5,5),
(8,8,'2006-07-04',210,4,4),
(9,9,'2006-08-03',142,3,3),
(10,10,'2006-08-02',126,2,2),
(11,11,'2006-09-01',111,1,1);