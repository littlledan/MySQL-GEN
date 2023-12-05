CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(100) NOT NULL,
descricao varchar(100),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Salgado", "Mais salgada do que Doce");
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Doce", "Mais Doce do que Salgado");
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Vegana", "Sabor da flora");
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Mista", "O que tem de melhor do doce e salgado");
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Bebida", "Refrigerante");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
nome varchar(100) NOT NULL,
ingrediente varchar(100),
valor decimal(4,2) NOT NULL, 
quantidade varchar(100),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizza(nome, ingrediente, valor, quantidade, categoria_id)
VALUES("Margherita", "Molho de tomate, mussarela, manjericão", 50.00, "10", 1),
("Vegan", "Molho de tomate caseiro, queijo vegano", 70.00, "12", 3),
("Quatro Queijos", "Mussarela, parmesão, gorgonzola, catupiry", 40.00, "8", 1),
("Nuttela-M&Ms", "Nuttela, Quantidade generosa de M&Ms", 35.00, "15", 2),
("Sensação", "Chocolate, Morango", 48.00, "10", 2),
("Portuguesa", "Presunto, ovos, cebola, ervilhas, azeitonas", 42.00, "10", 1),
("Mista da Casa", "Metade quatro queijos, Metade Nuttela-M&Ms", 32.00, "12", 4),
("Coca-Cola", "---", 12.00, "20", 5);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE valor > 45.00;

SELECT * FROM tb_pizza WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizza WHERE nome LIKE "%m%";

SELECT nome, ingrediente, valor, quantidade, tb_categorias.tipo
FROM tb_pizza
INNER JOIN tb_categorias
ON tb_pizza.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";

SELECT nome, ingrediente, valor, quantidade, tb_categorias.tipo, tb_categorias.descricao
FROM tb_pizza
INNER JOIN tb_categorias
ON tb_pizza.categoria_id = tb_categorias.id;