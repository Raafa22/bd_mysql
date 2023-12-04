CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    setor VARCHAR(255) NOT NULL,
	quantidade INT,
    dataproduto DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, setor, quantidade, dataproduto, preco) 
VALUES ("Computador", "Eletronico",50, "2023-12-15", 2000.00),
("Computador Gamer", "Eletronico",50, "2023-12-10", 3000.00),
("Nootbook", "Eletronico",150, "2023-12-09", 2500.00),
("Mouse", "Eletronico",550, "2023-05-15", 100.00),
("Caixinha de som ", "Eletronico",250, "2023-04-10", 300.00),
("Fone de ouvido", "Eletronico",250, "2023-12-15", 200.00),
("Placa de vídeo", "Eletronico",320, "2023-10-09", 1000.00),
("Mouse Pad", "Eletronico",50, "2023-11-14", 50.00);

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);-- 0000.00

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco > 500.00;

UPDATE  tb_produtos SET preco = 2000.00 WHERE Id = 3;

SELECT * FROM tb_produtos;
