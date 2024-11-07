-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS db_clubeesportivo;
USE db_clubeesportivo;

-- Criação da tabela tb_atletas
CREATE TABLE tb_atletas (
    id_atleta INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    genero ENUM('M', 'F') NOT NULL,
    peso DECIMAL(5,2), 
    altura DECIMAL(4,2),
    modalidade VARCHAR(50)
);

-- Criação da tabela tb_competicoes
CREATE TABLE tb_competicoes (
    id_competicao INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_competicao DATE NOT NULL,
    localizacao VARCHAR(100),
    tipo VARCHAR(50), -- Tipo da competição (ex. estadual, nacional, internacional)
    premiacao DECIMAL(10,2), -- Valor da premiação em reais
    id_atleta INT,
    FOREIGN KEY (id_atleta) REFERENCES tb_atletas(id_atleta) ON DELETE CASCADE
);

-- Inserindo dados na tabela tb_atletas
INSERT INTO tb_atletas (nome, idade, genero, peso, altura, modalidade) VALUES
('João Silva', 25, 'M', 75.5, 1.80, 'Corrida'),
('Maria Souza', 22, 'F', 55.0, 1.65, 'Natação'),
('Carlos Santos', 28, 'M', 70.0, 1.78, 'Ciclismo'),
('Ana Paula', 30, 'F', 60.5, 1.68, 'Voleibol'),
('Pedro Almeida', 19, 'M', 80.0, 1.90, 'Basquete'),
('Beatriz Costa', 26, 'F', 52.0, 1.60, 'Ginástica'),
('Lucas Fernandes', 24, 'M', 68.0, 1.75, 'Judô'),
('Fernanda Lima', 27, 'F', 63.0, 1.70, 'Atletismo'),
('Rafael Ribeiro', 23, 'M', 78.0, 1.85, 'Futebol'),
('Mariana Oliveira', 21, 'F', 54.5, 1.62, 'Tênis'),
('Gustavo Rocha', 29, 'M', 82.0, 1.88, 'Boxe'),
('Juliana Santos', 25, 'F', 57.0, 1.66, 'Natação'),
('Roberto Costa', 32, 'M', 85.5, 1.82, 'Levantamento de Peso'),
('Paula Souza', 24, 'F', 58.5, 1.64, 'Ciclismo'),
('Vinícius Martins', 22, 'M', 76.0, 1.83, 'Handebol');

-- Inserindo dados na tabela tb_competicoes
INSERT INTO tb_competicoes (nome, data_competicao, localizacao, tipo, premiacao, id_atleta) VALUES
('Campeonato Estadual de Corrida', '2024-04-10', 'São Paulo', 'Estadual', 5000.00, 1),
('Torneio Nacional de Natação', '2024-06-20', 'Rio de Janeiro', 'Nacional', 7000.00, 2),
('Volta de Ciclismo', '2024-03-15', 'Curitiba', 'Regional', 3000.00, 3),
('Copa Internacional de Voleibol', '2024-07-22', 'Buenos Aires', 'Internacional', 15000.00, 4),
('Campeonato de Basquete Sub-21', '2024-08-10', 'São Paulo', 'Nacional', 8000.00, 5),
('Torneio de Ginástica Artística', '2024-09-05', 'Brasília', 'Nacional', 6000.00, 6),
('Copa Estadual de Judô', '2024-05-20', 'Recife', 'Estadual', 4000.00, 7),
('Maratona Internacional', '2024-10-12', 'Berlim', 'Internacional', 12000.00, 8),
('Campeonato Estadual de Futebol', '2024-03-30', 'Porto Alegre', 'Estadual', 10000.00, 9),
('Aberto de Tênis', '2024-02-25', 'São Paulo', 'Nacional', 5000.00, 10),
('Torneio Nacional de Boxe', '2024-04-18', 'Belo Horizonte', 'Nacional', 8000.00, 11),
('Campeonato de Natação Regional', '2024-07-08', 'Salvador', 'Regional', 3000.00, 12),
('Campeonato de Levantamento de Peso', '2024-09-12', 'Fortaleza', 'Nacional', 9000.00, 13),
('Competição Estadual de Ciclismo', '2024-06-15', 'Manaus', 'Estadual', 4500.00, 14),
('Campeonato Estadual de Handebol', '2024-05-25', 'Brasília', 'Estadual', 4000.00, 15),
('Maratona Nacional de Corrida', '2024-11-10', 'São Paulo', 'Nacional', 6000.00, 1),
('Torneio Internacional de Natação', '2024-08-20', 'Londres', 'Internacional', 15000.00, 2),
('Desafio Nacional de Ciclismo', '2024-10-10', 'Belo Horizonte', 'Nacional', 5000.00, 3),
('Torneio Regional de Voleibol', '2024-09-15', 'Campinas', 'Regional', 2000.00, 4),
('Campeonato Sub-21 de Basquete', '2024-04-11', 'Porto Alegre', 'Nacional', 8000.00, 5),
('Copa Nacional de Ginástica', '2024-10-05', 'Curitiba', 'Nacional', 5000.00, 6),
('Desafio Estadual de Judô', '2024-03-18', 'São Paulo', 'Estadual', 3500.00, 7),
('Competição Internacional de Atletismo', '2024-11-20', 'Nova Iorque', 'Internacional', 20000.00, 8),
('Torneio Regional de Futebol', '2024-08-30', 'Brasília', 'Regional', 7000.00, 9),
('Campeonato de Tênis Sub-23', '2024-12-01', 'Fortaleza', 'Nacional', 5000.00, 10),
('Aberto Internacional de Boxe', '2024-09-18', 'Lisboa', 'Internacional', 10000.00, 11),
('Campeonato Estadual de Natação', '2024-05-08', 'Goiânia', 'Estadual', 3000.00, 12),
('Campeonato Internacional de Levantamento de Peso', '2024-10-12', 'Moscou', 'Internacional', 25000.00, 13),
('Corrida Regional de Ciclismo', '2024-04-10', 'Natal', 'Regional', 2500.00, 14),
('Copa Nacional de Handebol', '2024-11-10', 'São Paulo', 'Nacional', 4500.00, 15),
('Torneio Municipal de Atletismo', '2024-12-20', 'Curitiba', 'Municipal', 2000.00, 8),
('Campeonato Municipal de Basquete', '2024-10-11', 'São Bernardo do Campo', 'Municipal', 1500.00, 5),
('Competição Regional de Tênis', '2024-06-15', 'Ribeirão Preto', 'Regional', 4000.00, 10),
('Torneio Aberto de Judô', '2024-07-22', 'Campinas', 'Municipal', 2000.00, 7),
('Desafio Nacional de Boxe', '2024-10-05', 'Brasília', 'Nacional', 6000.00, 11);

-- Atividade 1
SELECT id_atleta, nome, modalidade
FROM tb_atletas;

-- Atividade 2
SELECT nome, data_competicao, localizacao, tipo, premiacao, id_atleta
FROM tb_competicoes
WHERE tipo LIKE 'Nacional';

-- Atividade 3
SELECT tb_atletas.nome, tb_competicoes.nome 
FROM tb_atletas
JOIN tb_competicoes
ON tb_atletas.id_atleta = tb_competicoes.id_atleta;

-- Atividade 4
SELECT tb_atletas.nome, tb_atletas.idade, tb_competicoes.premiacao
FROM tb_atletas
JOIN tb_competicoes
WHERE premiacao > 5000;

-- Atividade 5
SELECT tb_atletas.nome, tb_competicoes.localizacao
FROM tb_atletas
JOIN tb_competicoes
ON tb_atletas.id_atleta = tb_competicoes.id_atleta;

-- Atividade 6
SELECT tb_competicoes.tipo, COUNT(tipo) AS 'Total de Competicoes'
FROM tb_competicoes
WHERE tipo LIKE 'Internacional'
GROUP BY tipo;

-- Atividade 7
SELECT tb_competicoes.nome, tb_competicoes.data_competicao, tb_atletas.nome
FROM tb_competicoes
JOIN tb_atletas
ORDER BY data_competicao DESC;

-- Atividade 8
SELECT tb_atletas.nome, tb_atletas.genero, tb_atletas.altura
FROM tb_atletas
WHERE genero LIKE 'F'
ORDER BY altura = 1.60, 1.70;

-- Atividade 9
SELECT tb_atletas.nome,
SUM(tb_competicoes.premiacao) AS 'Total de Premiacao'
FROM tb_atletas
JOIN tb_competicoes
ON tb_competicoes.premiacao = tb_competicoes.premiacao 
GROUP BY tb_atletas.nome;

-- Atividade 10
SELECT tb_atletas.nome, 
COUNT(tb_competicoes.id_competicao) AS 'Contagem de Repeticoes'
FROM tb_atletas
JOIN tb_competicoes
ON tb_competicoes.id_atleta = tb_competicoes.id_atleta
GROUP BY tb_atletas.nome 
HAVING COUNT(tb_competicoes.id_competicao) > 2;


