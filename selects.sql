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
VALUES (1, 'Tarcio Teles', 42522206508, '485271250', '1994-11-13', 'M', 'Professor', 'Brasileiro', 'Rua antonio cutiaro', '171', 'casa 2', 'tijuco preto', 'cotia', 'sp', NULL);

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

/****COMANDOS SELECT****/

SELECT * FROM cliente; /*Comando select nos permite fazer consultas aqui selecionamos toda a tabela cliente*/

SELECT nome, data_nascimento FROM cliente; /*flitrar apenas essas colunas*/

SELECT nome, data_nascimento AS "Data de Nascimento" from cliente; /*mudar o título da coluna selecionada*/

SELECT 'CPF: ' || cpf || 'RG: ' || rg as "CPF e RG" from cliente; /*selecionar duas tabelas e já concatenar*/