> [!NOTE]
> Tabelas complementares à realização da atividade:
> [ALUNO e EMPRESTIMO](https://github.com/alcangio/db-ESCOLA/blob/main/Imagem01_Atividade06_BancoDeDadosI.png), 
> [LIVRO_EMPRESTIMO](https://github.com/alcangio/db-ESCOLA/blob/main/Imagem02_Atividade06_BancoDeDadosI.png) e
> [LIVRO e SESSÃO](https://github.com/alcangio/db-ESCOLA/blob/main/Imagem03_Atividade06_BancoDeDadosI.png).

# Desenvolvimento 6 #101770
De acordo com os comandos aprendidos, programe códigos SQL para:
- [ ] criar um banco de dados chamado ESCOLA e deixe-o pronto para o uso;
- [ ] crie uma tabela chamada ALUNO;  
- [ ] defina os atributos da tabela;
- [ ] adicione a chave primária de nome ID (identificador);
- [ ] adicione um atributo nome do tipo varchar;
- [ ] adicione um atributo e-mail do tipo varchar;
- [ ] adicione um atributo endereço do tipo varchar.
   
## 🗃 Criando o banco de dados ESCOLA no SGBD
```
CREATE DATABASE escola;
```
- [ ] selecione o banco de dados recém-criado "escola" no ambiente:
```
USE escola;
```

##  👩🏼‍🎓 ALUNO
### criando a tabela 'aluno'
```
CREATE TABLE ALUNO (
  ID SERIAL PRIMARY KEY,
  nome VARCHAR(20) NOT NULL,
  email VARCHAR(20),
  endereco VARCHAR(50)
);
```
### incluir outros atributos na tabela 'aluno'
```
ALTER table ALUNO
add COLUMN matricula VARCHAR(5) NOT NULL,
add COLUMN telefone VARCHAR(15);
```
### inserindo valores na tabela 'aluno'
```
INSERT INTO ALUNO (nome, email, endereco, matricula, telefone) VALUES
  ('João Carlos','Jcarlos@gmail.com', 'Rua 13 de maio', 1234, '(11)7825-4489'),
  ('José Vitor', 'Jvitor@gmail.com', 'Rua da Saudade', 2345, '(11)7825-6589'),
  ('Paulo André', 'Pandr@gmail.com', 'Rua do Sol', 3456, '(11)7825-4495');
```
### projetando todos os atributos da tabela 'aluno' (sqliteonline.com)
```
SELECT * FROM ALUNO
```
![image](https://github.com/alcangio/db-ESCOLA/assets/142796669/b3172c26-48fe-4288-bdf6-1418e2670781)

