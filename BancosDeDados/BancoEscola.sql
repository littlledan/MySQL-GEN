CREATE DATABASE db_escola; 

USE db_escola; 

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(200) NOT NULL,
    cpf varchar(15) NOT NULL,
    datanascimento date NOT NULL,
    turma varchar(2) NOT NULL,
    nota decimal(4,2) NOT NULL,
    primary key (id)
);

INSERT INTO tb_estudantes (nome, cpf, datanascimento, turma, nota)
VALUES ("Daniel Lima", "123.456.789-98", "2001-01-10", "1B", 6.00),
("Gabriel Costa", "874.563.215-78", "2000-08-12", "1C", 9.00),
("Kevin Elias", "624.953.785-61", "2000-06-24", "1E", 6.50),
("Kaellen Heleni", "367.891.204-05", "1999-02-14", "2A", 5.50),
("Bianca Akemi", "240.697.020-45", "1997-05-09", "3D", 9.00),
("Isabela Correia", "892.456.301-20", "2005-11-30", "1A", 9.00),
("Pedro Wesley", "021.452.015-02", "1999-11-16", "3A", 9.00),
("Arthur Reis", "258.963.147-21", "2000-02-29", "3D", 8.00);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;

UPDATE tb_estudantes SET nota = 5.50 WHERE id = 7;