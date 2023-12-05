CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (descricao)
VALUES ("Doce");

INSERT INTO tb_categorias (descricao)
VALUES ("Salgada");

INSERT INTO tb_categorias (descricao)
VALUES ("Coxinhas");

INSERT INTO tb_categorias (descricao)
VALUES ("Sobremesa");

INSERT INTO tb_categorias (descricao)
VALUES ("Bebidas");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pizza de Mussarela", 100, "2023-12-07", 40.99, 2);

INSERT INTO tb_pizzas  (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pizza de Calabresa", 130, "2023-12-08", 58.00, 2);

INSERT INTO tb_pizzas  (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pizza de brigadeiro", 100, "2023-12-09", 55.00, 1);

INSERT INTO tb_pizzas  (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pizza de beijinho", 300, "2023-12-10", 67.00, 1);

INSERT INTO tb_pizzas  (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Coxinha Frango", 1020, "2023-12-08", 5.00, 3);

INSERT INTO tb_pizzas (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Sorvete", 100, "2023-12-07", 20.00, 4);

INSERT INTO tb_pizzas(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Refrigerante", 1500, "2024-12-06", 10.00, 5);

INSERT INTO tb_pizzas (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Suco", 180, "2024-12-09", 7.50, 3);

SELECT * FROM tb_pizzas ;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

UPDATE  tb_pizzas SET preco = 100.00 WHERE Id = 2;

SELECT * FROM tb_pizzas ;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

 -- INNER JOIN
SELECT nome, quantidade, dtvalidade, preco, categoria_id
FROM tb_pizzas 															
INNER JOIN tb_categorias 								
ON categoria_id = tb_categorias.id;

SELECT nome, quantidade, dtvalidade, preco, tb_categorias.descricao
FROM tb_pizzas 															
INNER JOIN tb_categorias 								
ON categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = 'Doce';





