create table cliente(
	/*
	id do cliente será um numero inteiro e todo cliente precisa ter id
	not null = campo não nulo
	*/
	idcliente integer not null,
	nome varchar (50) not null, -- Pedro 5, 45 espaços vazios
	cpf char (11),
	rg varchar (15),
	data_nascimento date,
	genero char (1),
	profissao varchar (30),
	nacionalidade varchar (30),
	logradouro varchar (30),
	numero varchar (10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	Observacoes text,
	
	-- primary key
	constraint pk_cln_idcliente primary key (idcliente)
)

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (1, 'Tarcio Teles', 42522206508, '485271250', '1995-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (2, 'Maria Teles', 42522206508, '485271250', '1994-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (3, 'Joana Teles', 42520650845, '485271250', '1994-11-13', 'f', 'cozinheira', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (4, 'José Santos', 42522206508, '485271250', '1994-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (5, 'Tevez', 42522206508, '485271250', '1994-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (6, 'Dudu', 42520650845, '485271250', '1994-11-13', 'f', 'cozinheira', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (7, 'Richard Rios', 42522206508, '485271250', '1994-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (8, 'Endrick', 42522206508, '485271250', '2007-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (9, 'Murilo', 42522206508, '485271250', '2004-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (10, 'Cachorão', 42522206508, '485271250', '2007-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf, Observacoes)
VALUES (11, 'Carlão', 42522206508, '485271250', '2004-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

/****COMANDOS SELECT****/

SELECT * FROM cliente; /*Comando select nos permite fazer consultas aqui selecionamos toda a tabela cliente*/

SELECT nome, data_nascimento FROM cliente; /*flitrar apenas essas colunas*/

SELECT nome, data_nascimento AS "Data de Nascimento" FROM cliente; /*mudar o título da coluna selecionada*/

SELECT 'CPF: ' || cpf || 'RG: ' || rg AS "CPF e RG" FROM cliente; /*selecionar duas tabelas e já concatenar*/

SELECT * FROM cliente LIMIT 1; /*Filtra os dados da primeira linha da tabela*/

SELECT nome, data_nascimento FROM cliente; /*Filtra a tabela completa novamente*/

/****Filtro com o comando WHERE(ONDE) aqui usaremos uma condição para filtrar*****/
SELECT nome, data_nascimento FROM cliente WHERE data_nascimento > '2000-01-01'; /*Filtra na tabela todos os clientes que nasceram depois de 2000*/

SELECT nome FROM cliente WHERE nome LIKE 'C%'; /*Filtra todos os clientes que começam com a letra C MAIÚSCULA*/

SELECT nome FROM cliente WHERE nome LIKE '%c%'; /*Filtra todos que contéma letra c minúscula no nome*/

/*BETWEEN(Entre) tais valores*/
SELECT nome, data_nascimento FROM cliente WHERE data_nascimento BETWEEN '1995-01-01' AND '2020-01-01'; /*Filtra a diferença de tempo filtra por periodo*/

SELECT nome FROM cliente ORDER BY nome ASC; /*Organiza a tabela em ordem crescecente*/

SELECT nome FROM cliente ORDER BY nome DESC; /*Organiza a tabela em ordem decrescecente*/


/******UPDATE AND DELETE*****/

UPDATE cliente SET nome = 'Teste' Where idcliente = 1; /* Altera o nome para teste do cliente com id 1*/

UPDATE cliente SET nome = 'Adrinano', genero = 'M', numero = '241' Where idcliente = 1; /*Altera o nome genero numero do cliente com id 1*/

INSERT INTO cliente (idcliente, nome) VALUES (16, 'Jãozinho'); /*inseri um cliente apenas com os dados obrigatórios*/

DELETE FROM cliente WHERE idcliente = 1; /*deleta da tabela o cliente com id 1*/

SELECT * FROM cliente; /*seleciona toda a tabela*/