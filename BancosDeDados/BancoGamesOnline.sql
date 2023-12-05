CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
Descricao varchar(255) NOT NULL,
Estilo varchar(100),
PRIMARY KEY (id)
);

INSERT INTO tb_classes (descricao, estilo)
VALUES ("Ladino", "Stealth");

INSERT INTO tb_classes (descricao, estilo)
VALUES ("Lutador", "Close Combat");

INSERT INTO tb_classes (descricao, estilo)
VALUES ("Feitiçeiro", "Ranged");

INSERT INTO tb_classes (descricao, estilo)
VALUES ("Tank", "Sustein");

INSERT INTO tb_classes (descricao, estilo)
VALUES ("Monge", "Close combat");

INSERT INTO tb_classes (descricao, estilo)
VALUES ("Bardo", "Suport");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
Nome varchar(100) NOT NULL,
Raca varchar(100) NOT NULL,
FisicPower varchar(100), 
MagicPower varchar(100),
Defense varchar(100),
Speed decimal (3,2),
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagem (nome, raca, fisicPower, magicpower, defense, speed, classe_id)
VALUES ("Daniel", "BESTIAL", "2500", "0", "4000", 1.88, 4),
("Isabella", "ELFO NEGRO", "2000", "2500", "1200", 4.59, 1),
("Bianca", "ELFO SUPERIOR", "0", "5000", "1500", 2.26, 3),
("Pedro", "ILUMINADO", "2800", "2800", "2200", 3.33, 5),
("Arthur", "BESTIAL", "2000", "500", "5000", 1.66, 4),
("Kaellen", "ANÃO", "500", "4500", "500", 2.50, 6),
("Gabriel", "ANÃO", "600", "4500", "600", 2.50, 6),
("Kevin", "HUMANO", "5000", "1500", "2000", 3.00, 1);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE fisicpower > 2000;

SELECT * FROM tb_personagem WHERE defense BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT nome, raca, fisicpower, magicpower, defense, speed, tb_classes.descricao
FROM tb_personagem 
INNER JOIN tb_classes
ON tb_personagem.classe_id = tb_classes.id
WHERE tb_classes.descricao = "TANK";

SELECT nome, raca, fisicpower, magicpower, defense, speed, tb_classes.descricao, tb_classes.estilo
FROM tb_personagem 
INNER JOIN tb_classes
ON tb_personagem.classe_id = tb_classes.id;

UPDATE tb_personagem SET classe_id = 2 WHERE Id = 8;