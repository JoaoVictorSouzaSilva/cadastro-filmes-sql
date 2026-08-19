CREATE DATABASE IF NOT EXISTS catalogo_filmes;
USE catalogo_filmes;

CREATE TABLE IF NOT EXISTS diretores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS filmes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano YEAR NOT NULL,
    diretor_id INT NOT NULL,
    categoria_id INT NOT NULL,
    CONSTRAINT fk_filmes_diretores
        FOREIGN KEY (diretor_id) REFERENCES diretores(id),
    CONSTRAINT fk_filmes_categorias
        FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO diretores (nome) VALUES
    ('Christopher Nolan'),
    ('Greta Gerwig'),
    ('Bong Joon-ho');

INSERT INTO categorias (nome) VALUES
    ('Ficção Científica'),
    ('Drama'),
    ('Comédia');

INSERT INTO filmes (titulo, ano, diretor_id, categoria_id) VALUES
    ('Interestelar', 2014, 1, 1),
    ('Oppenheimer', 2023, 1, 2),
    ('Barbie', 2023, 2, 3),
    ('Parasita', 2019, 3, 2);

-- Lista filmes com seus diretores e categorias
SELECT
    f.id,
    f.titulo,
    f.ano,
    d.nome AS diretor,
    c.nome AS categoria
FROM filmes AS f
JOIN diretores AS d ON d.id = f.diretor_id
JOIN categorias AS c ON c.id = f.categoria_id
ORDER BY f.ano DESC, f.titulo;

-- Filtra filmes de um diretor específico
SELECT
    f.titulo,
    f.ano
FROM filmes AS f
JOIN diretores AS d ON d.id = f.diretor_id
WHERE d.nome = 'Christopher Nolan';

-- Filtra filmes por categoria
SELECT
    f.titulo,
    f.ano
FROM filmes AS f
JOIN categorias AS c ON c.id = f.categoria_id
WHERE c.nome = 'Drama';

-- Conta quantos filmes cada diretor possui cadastrado
SELECT
    d.nome AS diretor,
    COUNT(f.id) AS quantidade_filmes
FROM diretores AS d
LEFT JOIN filmes AS f ON f.diretor_id = d.id
GROUP BY d.id, d.nome
ORDER BY quantidade_filmes DESC, d.nome;
