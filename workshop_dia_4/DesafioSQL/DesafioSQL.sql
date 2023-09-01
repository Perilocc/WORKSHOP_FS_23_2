-- CREATE DATABASE animes;
USE animes;
CREATE TABLE listagem(	
	nome VARCHAR(100) NOT NULL,
    id INT PRIMARY KEY,
    episodios INT NOT NULL, 
    categoria VARCHAR(40) NOT NULL
    -- manga CHAR
);

CREATE TABLE viewer(
	nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    anime_favorito VARCHAR(100) NOT NULL,
    episodio_atual INT
    -- categoria_pref VARCHAR(40) NOT NULL
);


CREATE TABLE personagem(
	nome VARCHAR(40) PRIMARY KEY,
    anime VARCHAR(100) NOT NULL,
    protagonista CHAR,
    categoria VARCHAR(40) NOT NULL
    -- idade INT NOT NULL
    );
    
-- adicionar colunas nas tabelas
ALTER TABLE listagem ADD COLUMN manga CHAR;
ALTER TABLE viewer ADD COLUMN categoria_pref CHAR;
ALTER TABLE personagem ADD COLUMN idade INT;

-- inserir dados nas colunas das tabelas
INSERT INTO 
listagem(nome, id, episodios, categoria, manga)
VALUES
('One Piece', '1', '1074', 'Shonen', 'True'),
('Berserk', '2', '25', 'Fantasia', 'True'),
('HxH', '3', '148', 'Aventura', 'True');

INSERT INTO 
viewer(nome, idade, anime_favorito, episodio_atual, categoria_pref)
VALUES
('Perilo', '17', 'Berserk', '25', 'Magia'),
('Biel', '18', 'One piece', '1074', 'Shonen'),
('Heitor', '19', 'HxH', '143', 'Ação');

INSERT INTO 
personagem(nome, anime, protagonista, categoria, idade)
VALUES
('Luffy', 'One piece', 'True', 'Shonen', '19'),
('Zoro', 'One piece', 'False', 'Shonen', '20'),
('Gon', 'HxH', 'True', 'Aventura', '12');

-- Remover uma coluna de cada
ALTER TABLE listagem DROP COLUMN id;
ALTER TABLE viewer DROP COLUMN episodio_atual;
ALTER TABLE personagem DROP COLUMN categoria;

-- Expor conteúdo
SELECT * FROM listagem;
SELECT * FROM viewer;
SELECT * FROM personagem;

-- Expor conteúdo com condições específicas
SELECT * FROM listagem WHERE episodios > 130;
SELECT * FROM listagem WHERE manga = 'T';
SELECT * FROM viewer WHERE idade > 17;
SELECT * FROM viewer WHERE idade > 17;
SELECT * FROM personagem WHERE idade > 17;
SELECT * FROM personagem WHERE protagonista = 'T';
SELECT * FROM personagem WHERE anime = 'One Piece';
SELECT * FROM personagem WHERE anime = 'HxH';






    

    




