-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_quitanda;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Laranja", 3000, "2022-03-13", 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Tomate", 1105, "2022-03-15", 3.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

-- Ordenando os registros
SELECT * FROM tb_produtos ORDER BY nome ASC;

SELECT * FROM tb_produtos ORDER BY nome DESC;

SELECT * FROM tb_produtos ORDER BY nome, preco ASC;

-- Fazendo buscas com critérios específicos
SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00);

SELECT * FROM tb_produtos 
WHERE preco IN (5.00, 10.00, 15.00) 
AND quantidade IN(1000, 1500, 2000);

-- Fazendo buscas em intervalo de valores
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00 ORDER BY preco ASC; -- Pesquisa dentro de um intervalo e ordena a exibição pelo PREÇO em ordem crescente

SELECT nome FROM tb_produtos WHERE nome BETWEEN 'A' AND 'P'; -- Pesquisa dentro de um intervalo utilizando Texto

-- Selecionando registros com um texto específico
SELECT * FROM tb_produtos WHERE nome LIKE "%te"; -- seleciona produto com o termo TE no final
SELECT * FROM tb_produtos WHERE nome LIKE "ra%"; -- seleciona produto com o termo TE no começo
SELECT * FROM tb_produtos WHERE nome LIKE "%ra%"; -- seleciona produto com o termo TE no começo, no meio ou final

-- Comandos de Junção (Inner Join/ Right Join/ Left Join)

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

-- INNER JOIN
SELECT nome, preco, quantidade, tb_categorias.descricao -- seleciona os dados que queremos verificar
FROM tb_produtos										-- informamos a primeira tabela da união						
INNER JOIN tb_categorias 								-- informamos o tipo de junção (INNER: trazer apenas registros que possuem relacionamento)
ON categoria_id = tb_categorias.id;						-- critério de condição usado para confirmar se há relacionamento
															-- (se no campo categoria_id da tabela produtos existir um ID que bate com os id´s da 
                                                            -- do campo ID da tabela categoria, isso significa que existe relacionamento entre eles
															-- e os dados desse registro devem ser trazidos)

-- LEFT JOIN
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos 
LEFT JOIN tb_categorias 								-- informamos o tipo de junção (LEFT: trazer os registros que possuem relacionamento e 
ON tb_produtos.categoria_id = tb_categorias.id;			-- todos os registros da tabela À ESQUERDA DO COMANDO LEFT)

-- RIGHT JOIN
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos 
RIGHT JOIN tb_categorias 								-- informamos o tipo de junção (RIGHT: trazer os registros que possuem relacionamento e 
ON tb_produtos.categoria_id = tb_categorias.id;			-- todos os registros da tabela À DIREITA DO COMANDO RIGHT)