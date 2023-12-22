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
	numero varchar (10)'',
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	Observacoes text,
	
	-- primary key
	constraint pk_cln_idcliente primary key (idcliente)
)