CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);


INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE preco > 5.00;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("jambo",200, "2023-11-15", 4.52);

SELECT * FROM tb_produtos;

UPDATE tb_produtos SET preco = 2.99 WHERE Id = 6;

DELETE FROM tb_produtos WHERE Id = 8;

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("amora",150, "2023-11-15", 8.56);

UPDATE tb_produtos SET preco = 10, nome = "jaca", quantidade = 600, datavalidade = "2023-11-15" WHERE Id = 8;