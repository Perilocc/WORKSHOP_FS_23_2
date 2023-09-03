CREATE DATABASE filmes;
USE filmes;

-- Criando as tabelas base
CREATE TABLE lista(
	nome VARCHAR(40) PRIMARY KEY,
    ano INT NOT NULL,
    categoria VARCHAR(40) NOT NULL
);

CREATE TABLE atores(
	nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    oscar INT NOT NULL
);

CREATE TABLE publico_alvo_filmes(
	nome_filme VARCHAR(40) PRIMARY KEY,
    publico_alvo VARCHAR(40) NOT NULL,
    idade_publico_alvo VARCHAR(10) NOT NULL
);

-- Adicionando mais colunas nas tabelas
ALTER TABLE lista ADD COLUMN continuacao VARCHAR(15) NOT NULL;
ALTER TABLE atores ADD COLUMN melhor_atuacao VARCHAR(100) NOT NULL;
ALTER TABLE publico_alvo_filmes ADD COLUMN receita_esperada VARCHAR(40) NOT NULL;

-- Adicionando dados nas tabelas
INSERT INTO 
lista(nome, ano, categoria, continuacao )
VALUES
('Batman O Cavaleiro das Trevas', 2008, 'Ação', 'Sim'),
('Barbie', 2023, 'Comédia Romântica', 'Indefinida'),
('O Jogo da Imitação', 2014, 'História/Drama/Mistério', 'Não'),
('Até o último homem', 2016, 'Ação/História', 'Não');

INSERT INTO 
atores(nome, idade, oscar, melhor_atuacao)
VALUES
('Andrew Garfield', 40, 0, 'Homem-Aranha 2'),
('Benedict Cumberbatch', 47, 2 , 'O Jogo da Imitação'),
('Margot Robbie', 33, 0, 'Barbie'),
('Heath Ledger', '28', 1, 'Batman O Cavaleiro das Trevas');

INSERT INTO 
publico_alvo_filmes(nome_filme, publico_alvo, idade_publico_alvo, receita_esperada)
VALUES
('Batman O Cavaleiro das Trevas', 'Jovens/Adultos', '15-40', '574.000.000'),
('Barbie', 'Jovens/Adultos', '18-36', '1.342.401.000'),
('O Jogo da Imitação', 'Jovens/Adultos/Idosos', '18-60', '94.800.000'),
('Até o último homem', 'Jovens/Adultos', '18-40', '70.850.849');

-- Expor os Conteúdos das tabelas
SELECT * FROM lista;
SELECT * FROM atores;
SELECT * FROM publico_alvo_filmes;

-- Expor os Conteúdos das tabelas com condições especiais
SELECT * FROM lista WHERE continuacao = 'Não';
SELECT * FROM lista WHERE continuacao = 'Sim';
SELECT * FROM lista WHERE ano > 2009;
SELECT * FROM atores WHERE oscar >= 1;
SELECT * FROM atores WHERE idade <= 39;
SELECT * FROM publico_alvo_filmes WHERE idade_publico_alvo = '18-40';
SELECT * FROM publico_alvo_filmes WHERE publico_alvo = 'Jovens/Adultos';




