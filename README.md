> [!NOTE]
> Tabelas complementares à realização da atividade:
> [ALUNO e EMPRESTIMO](https://github.com/alcangio/db-ESCOLA/blob/main/Imagem01_Atividade06_BancoDeDadosI.png), 
> [LIVRO_EMPRESTIMO](https://github.com/alcangio/db-ESCOLA/blob/main/Imagem02_Atividade06_BancoDeDadosI.png) e
> [LIVRO e SESSÃO](https://github.com/alcangio/db-ESCOLA/blob/main/Imagem03_Atividade06_BancoDeDadosI.png).


# 🗃 Criando um novo banco de dados
- [ ] no Sistema de Gerenciamento de Banco de Dados (SGBD) crie um novo banco de dados:
```
CREATE DATABASE escola;
```
- [ ] selecione o banco de dados recém-criado "escola" no ambiente:
```
USE escola;
```

## 🧾 Criando uma nova tabela
- [ ] crie uma tabela chamada ALUNO
### 🔖 Defina os atributos da tabela:
- [ ] adicione a chave primária de nome ID
- [ ] adicione um atributo nome do tipo varchar
- [ ] adicione um atributo e-mail do tipo varchar
- [ ] adicione um atributo endereço do tipo varchar
```
--criar tabela
CREATE TABLE aluno (
  ID_nome SERIAL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  endereco VARCHAR(255)
) 
 
--inserir valores na tabela
INSERT INTO aluno (nome, email, endereco) 
VALUES ('Giovanna D Alcântara', 
        'alcangio@protonmail.com', 
        'Rua 1, 123 bairro qualquer, 31000-000, Belo Horizonte, MG');

--projeta todas as colunas da tabela
SELECT * FROM aluno;
```
