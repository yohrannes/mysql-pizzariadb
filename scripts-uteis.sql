/* Excliur todas as chaves estrangeiras de uma base de dados */
SET foreign_key_checks = 0;
SELECT CONCAT('ALTER TABLE ', TABLE_NAME, ' DROP FOREIGN KEY ', CONSTRAINT_NAME, ';') AS drop_statement
FROM information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_SCHEMA = 'nome_do_seu_banco_de_dados' AND REFERENCED_TABLE_NAME IS NOT NULL;
SET foreign_key_checks = 1;
