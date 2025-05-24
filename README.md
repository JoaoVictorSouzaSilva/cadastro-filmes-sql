# Cadastro de Filmes - Projeto SQL Simples

![SQL](https://img.shields.io/badge/Language-SQL-blue)
![Build](https://img.shields.io/badge/build-passing-brightgreen)
![License](https://img.shields.io/badge/license-MIT-green)
![Last Commit](https://img.shields.io/github/last-commit/JoaoVictorSouzaSilva/cadastro-filmes-sql)

Este projeto é um banco de dados simples para cadastro de filmes, seus diretores e categorias, usando comandos SQL básicos.

---

## 📂 Estrutura do banco de dados

O projeto contém três tabelas principais:

- **diretores**: armazena os diretores de filmes (`id`, `nome`)
- **categorias**: armazena as categorias dos filmes (`id`, `nome`)
- **filmes**: armazena os filmes cadastrados (`id`, `titulo`, `ano`, `diretor_id`, `categoria_id`), com referências para diretores e categorias

---

## ⚙️ O que o código faz

- Cria as tabelas e define os relacionamentos entre elas
- Insere alguns dados de exemplo nas tabelas
- Exemplos de consultas SQL para:
  - Listar todos os filmes com seus respectivos diretores e categorias
  - Filtrar filmes por diretor ou categoria
  - Contar quantos filmes cada diretor possui cadastrado

---

## 🧪 Como testar o projeto

Você pode testar este script SQL em qualquer banco de dados compatível com MySQL, como:

- [DB Fiddle (online)](https://www.db-fiddle.com/)
- MySQL Workbench
- DBeaver
- MariaDB

### Passos para testar no DB Fiddle:

1. Acesse [DB Fiddle](https://www.db-fiddle.com/)
2. Cole o conteúdo do arquivo `script.sql` na área de "Schema SQL"
3. Execute o script para criar as tabelas e inserir os dados
4. Cole as consultas SQL na área "Query SQL" e execute para ver os resultados

---

## 💻 Tecnologias usadas

- SQL (MySQL)

---

## Autor

João Victor de Souza Silva  
[LinkedIn](https://www.linkedin.com/in/jo%C3%A3o-victor-souza-silva-9a6a2525b/)
[GitHub](https://github.com/JoaoVictorSouzaSilva)
