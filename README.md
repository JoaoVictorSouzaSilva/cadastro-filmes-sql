# 🎬 Cadastro de Filmes em SQL

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Concluído-brightgreen)
![License](https://img.shields.io/badge/license-MIT-green)
![Last Commit](https://img.shields.io/github/last-commit/JoaoVictorSouzaSilva/cadastro-filmes-sql)

Projeto de banco de dados relacional para cadastro de filmes, diretores e categorias. O objetivo é praticar modelagem simples, relacionamentos com chaves estrangeiras e consultas SQL usando `JOIN`, filtros, agregações e ordenação.

## 📂 Estrutura do banco

O projeto possui três tabelas:

- `diretores`: armazena os diretores cadastrados
- `categorias`: armazena as categorias dos filmes
- `filmes`: armazena título, ano e as referências ao diretor e à categoria

Relacionamentos:

```text
diretores 1 ---- N filmes N ---- 1 categorias
```

## ⚙️ O que o script faz

O arquivo `script.sql` contém:

- criação do banco e das tabelas
- definição de chaves primárias e estrangeiras
- inserção de dados de exemplo
- consulta de filmes com diretor e categoria
- filtro por diretor
- filtro por categoria
- contagem de filmes por diretor

## 🧪 Como testar

O script foi escrito para MySQL e pode ser executado em ferramentas como:

- MySQL Workbench
- DBeaver
- MariaDB com pequenas adaptações, se necessário
- ambientes online compatíveis com MySQL

Execute o conteúdo de `script.sql` em uma conexão MySQL. As consultas de exemplo estão no final do próprio arquivo.

## 🧠 Conceitos praticados

- `CREATE TABLE`
- `PRIMARY KEY`
- `FOREIGN KEY`
- `INSERT`
- `SELECT`
- `JOIN`
- `WHERE`
- `COUNT`
- `GROUP BY`
- `ORDER BY`

## 📁 Estrutura do repositório

```text
cadastro-filmes-sql/
├── script.sql
├── LICENSE
└── README.md
```

## 👨‍💻 Autor

João Victor de Souza Silva  
[LinkedIn](https://www.linkedin.com/in/jo%C3%A3o-victor-souza-silva-9a6a2525b/) · [GitHub](https://github.com/JoaoVictorSouzaSilva)
