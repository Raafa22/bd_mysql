CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
elemento varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (Classe,Elemento)
VALUES ("Guerreiro","Luta");

INSERT INTO tb_classes (Classe,Elemento)
VALUES ("Magia" , "Mago");

INSERT INTO tb_classes (Classe,Elemento)
VALUES ("Arqueiro","Arco");

INSERT INTO tb_classes (Classe,Elemento)
VALUES ("Ninjas","Arte Marcial");

INSERT INTO tb_classes (Classe,Elemento)
VALUES ("Curandeiro","Cura");

SELECT * FROM tb_classes ;

CREATE TABLE tb_personagens (
    id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    sobrenome varchar(255) NOT NULL,
    pais varchar(255) NOT NULL,
    ataque decimal(6, 2),
    defesa decimal(6, 2),
    classe_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO  tb_personagens(nome, sobrenome, pais, ataque,defesa, classe_id) 
VALUES ("Scoot", "Silver", "Estados Unidos",  2000.00,1000.00, 1),
("Jean", "Grey", "Estados Unidos", 1500.00, 2500.00, 2),
("Lara", "Sanchez", "China", 1500.00, 1200.00,1 ),
("Digor", "Santos", "Brasil", 1000.00, 500.00,3 ),
("Rougue", "Ray", "Japao", 1600.00, 2700.00,2 ),
("Moon", "Red", "Marrocos", 1500.00, 1500.00,4 ),
("Ethan", "Fernandez", "Brasil", 1500.00, 2600.00,5),
("Jill", "Hill", "China", 1500.00, 2800.00,1 );

SELECT * FROM tb_personagens ;

UPDATE  tb_personagens SET ataque= 3000.00 WHERE Id = 1;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000.00 AND 2000.00;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

 -- INNER JOIN
SELECT nome, sobrenome, pais, ataque,defesa, tb_classes.classe
FROM tb_personagens  															
INNER JOIN tb_classes
ON classe_id =  tb_classes.id;



select * from tb_classes;

 -- INNER JOIN
SELECT nome, sobrenome, pais, ataque, defesa, tb_classes.classe
FROM tb_personagens
INNER JOIN tb_classes ON classe_id = tb_classes.id
WHERE tb_classes.classe = 'Arqueiro';





