CREATE DATABASE escola;

USE escola;

CREATE TABLE tb_alunos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	sobrenome VARCHAR(255) NOT NULL,
    turma VARCHAR(255) NOT NULL,
    periodo VARCHAR(255) NOT NULL,
	nota float,
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, sobrenome, turma, periodo,nota) 
VALUES ("Rafael", "Nunes", "Turma A", "Manhã", 10.0),
("Renan", "Santos", "Turma B", "Manhã", 8.5),
("Ana", "Sanchez", "Turma A", "Manhã", 5.0),
("Lara", "Ferreira", "Turma B", "Manhã", 9.0),
("Raquel", "Antenore", "Turma A", "Manhã", 6.0),
("Fernando", "Eitan", "Turma C", "Manhã", 4.0),
("Junior", "Nunes", "Turma C", "Manhã", 2.0),
("Isa", "Leite", "Turma D", "Manhã", 10.0);

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE  tb_alunos SET nota = 9.0 WHERE Id = 5;

SELECT * FROM tb_alunos;





