CREATE DATABASE db_folhadorh;

USE  db_folhadorh;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	sobrenome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    dataadmisao DATE,
	salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, sobrenome, Cargo, dataadmisao,salario) 
VALUES ("Rafael", "Nunes", "Programador Junior", "2023-12-01", 3000.00),
("Ana", "Laura", "Rh", "2023-05-01", 2500.00),
("Isa", "Sanchez", "Auxiliar adm", "2023-01-01", 1500.00),
("Claudio", "Santos", "Suporte", "2023-12-01", 2800.00),
("Junior", "Fernandez", "Auxiliar adm", "2023-07-06", 1800.00);

SELECT * FROM tb_funcionarios;

ALTER TABLE tb_funcionarios MODIFY salario DECIMAL(6,2);-- 0000.00

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 2000.00 WHERE Id = 2;

SELECT * FROM tb_funcionarios;

