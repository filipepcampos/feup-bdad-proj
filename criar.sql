DROP TABLE IF EXISTS Localizacao;
CREATE TABLE Localizacao (
	pais varchar(255) NOT NULL,
	cidade varchar(255) NOT NULL,
	endereco varchar(255) NOT NULL,
	PRIMARY KEY(pais, cidade, endereco)
);

DROP TABLE IF EXISTS OfertaEmprego;
CREATE TABLE OfertaEmprego (
	id INT PRIMARY KEY,
	posicao varchar(255) NOT NULL,
	informacao varChar(4096),
	salario double CHECK(salario>=0),
	dataCriacao int NOT NULL,
	idEmpresa int,
	localizacaoPais varchar(255) NOT NULL,
	localizacaoCidade varchar(255) NOT NULL,
	localizacaoEndereco varchar(255) NOT NULL,
	FOREIGN KEY(localizacaoPais, localizacaoCidade, localizacaoEndereco) REFERENCES Localizacao(pais,cidade,endereco)
	--FOREIGN KEY(IdEmpresa) REFERENCES Empresa()
);

DROP TABLE IF EXISTS Candidatura;
CREATE TABLE Candidatura(
	idOferta int,
	idJogador int,
	dataCandidatura int NOT NULL, -- Check dataCandidatura > Oferta.dataCriacao
	PRIMARY KEY(idOferta, idJogador),
	FOREIGN KEY(idOferta) REFERENCES OfertaEmprego(id)
	-- FOREIGN KEY(IdJogador) REFERENCES ...
);

DROP TABLE IF EXISTS Competicao;
CREATE TABLE Competicao(
	id int PRIMARY KEY,
	titulo varchar(255) NOT NULL,
	descricao varchar(4096),
	dificuldadeMedia double NOT NULL CHECK(dificuldadeMedia >= 0 AND dificuldadeMedia <= 10), -- Calcular a dificuldadeMedia e confirmar o valor?
	datetimeInicio int NOT NULL, -- N sei se é boa ideia guardar isto num int mas por agora wtv
	datetimeFim int NOT NULL,
	numParticipantes int NOT NULL, -- Verificar isto
	premio varchar(255), -- 'Descrição do prémio'
	CHECK(datetimeFim > datetimeInicio)
);

DROP TABLE IF EXISTS Participacao;
CREATE TABLE Participacao(
	idJogador int,
	idCompeticao int,
	dataInscricao int NOT NULL, -- Verificar se inscrição foi antes do inicio da competição
	posicao int NOT NULL,
	mudancaRating int,
	PRIMARY KEY(idJogador, idCompeticao),
	FOREIGN KEY(idCompeticao) REFERENCES Competicao(id)
	--FOREIGN KEY(idJogador) REFERENCES ...
);

DROP TABLE IF EXISTS Contribuicao;
CREATE TABLE Contribuicao(
	idOrganizador int,
	idCompeticao int,
	PRIMARY KEY(idOrganizador, idCompeticao),
	FOREIGN KEY(idCompeticao) REFERENCES Competicao(id)
	--FOREIGN KEY(idOrganizador) REFERENCES ...
);