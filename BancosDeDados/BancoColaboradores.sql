CREATE DATABASE db_cadastro;

USE db_cadastro;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
    nome varchar(200) NOT NULL,
    dataadmissao date NOT NULL,
    funcao varchar(100) NOT NULL,
    salario decimal(7,2) NOT NULL,
    primary key (id)
);

INSERT INTO tb_colaboradores(nome, dataadmissao, funcao, salario)
VALUES("Daniel Lima", "2015-03-18", "Diretor Geral", 1500.50),
("Felipe Lima", "2017-02-01", "Gerente", 9220.20),
("Vitoria Lima", "2016-11-30", "Diretora de Designer", 1450.00),
("Tamiris", "2018-08-16", "Ditb_colaboradoresretora textil", 8250.70),
("Antônia Lima", "2000-05-25", "CEO", 12250.10);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

UPDATE tb_colaboradores SET salario = 9450.00 WHERE id = 3;
