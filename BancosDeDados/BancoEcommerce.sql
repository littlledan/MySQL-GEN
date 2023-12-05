CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_jogos(
	id bigint auto_increment,
    nome varchar(200),
    produtor varchar(100),
    tipo varchar(100),
    preco decimal(5,2),
    primary key (id)
);

INSERT INTO tb_jogos (nome, produtor, tipo, preco) 
VALUES ("God of War Ragnarok", "Santa Monica Studios", "Hack and Slash", 300.00),
("Bayonetta 2", "Platinum Games", "Hack and Slash", 150.00),
("Sekiro", "FromSoftware", "SoulsLike", 520.00),
("Dark Souls", "FromSoftware", "SoulsLike", 550.00),
("Final FIght", "Capcom", "Beat'em up", 50.00),
("Sonic", "Sega", "Classico", 620.00),
("Super Mario Bros", "Nintendo", "Plataforma", 100.00),
("Ghost of Tsushima", "Sucker Punch", "Ação-Aventura", 300.00);

SELECT * FROM tb_jogos;

SELECT * FROM tb_jogos WHERE preco > 500.00;

SELECT * FROM tb_jogos WHERE preco < 500.00;

UPDATE tb_jogos SET preco = 150.00 WHERE id = 6;