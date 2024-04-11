CREATE DATABASE banco_locadora;
USE banco_locadora;
CREATE TABLE `tb_filmes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255),
  PRIMARY KEY (ID));
  
INSERT INTO tb_filmes (titulo) VALUES ('Transformers O lado oculto da Lua');
INSERT INTO tb_filmes (titulo) VALUES ('Alice no pais das maravilhas');
INSERT INTO tb_filmes (titulo) VALUES ('O lobo de wall street');
INSERT INTO tb_filmes (titulo) VALUES ('Alien, o retorno');