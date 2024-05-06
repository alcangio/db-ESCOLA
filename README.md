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
```
CREATE TABLE aluno (
)
```

### 🔖 Defina os atributos da tabela:
- [ ] adicione a chave primária de nome ID
- [ ] adicione um atributo nome do tipo varchar
- [ ] adicione um atributo e-mail do tipo varchar
- [ ] adicione um atributo endereço do tipo varchar
```
CREATE TABLE aluno (
  ID_nome SERIAL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  endereco VARCHAR(255)
) 
```
