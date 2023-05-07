create table tb_funcionario(
id_funcionario integer auto_increment not null primary key,
rg_funcionario integer,
sal_funcionario float,
tel_funcionario integer,
nome_funcionario varchar(15),
func_funcionario varchar(15)
)engine= Innodb default charset = utf8mb4;

create table tb_cliente(--
id_cliente integer not null auto_increment primary key,
nome_cliente varchar(30),
rua varchar(20),
numero integer,
bairro varchar(20),
sexo varchar(10),
cidade varchar(10),
idade int
)engine= Innodb default charset = utf8mb4;

