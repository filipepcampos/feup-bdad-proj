.headers on
.mode columns
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Localizacao;
CREATE TABLE Localizacao (
        id INTEGER CONSTRAINT LocalizacaoPK PRIMARY KEY,
        pais TEXT CONSTRAINT paisNotNull NOT NULL,
        cidade TEXT CONSTRAINT cidadeNotNull NOT NULL,
        endereco TEXT CONSTRAINT enderecoNotNull NOT NULL,
        CONSTRAINT LocalizacaoUnique UNIQUE(pais, cidade, endereco)
);

DROP TABLE IF EXISTS OfertaEmprego;
CREATE TABLE OfertaEmprego (
        id INTEGER CONSTRAINT OfertaEmpregoPK PRIMARY KEY,
        posicao TEXT CONSTRAINT posicaoNotNull NOT NULL,
        informacao TEXT,
        salario REAL CONSTRAINT salarioPositivo CHECK(salario>=0),
        dataCriacao TEXT CONSTRAINT dataCriacaoNotNull NOT NULL,
        idEmpresa INTEGER CONSTRAINT idEmpresaNotNull NOT NULL, -- REFERENCES ...
        localizacaoId INT CONSTRAINT localizacaoFK REFERENCES Localizacao(id) ON DELETE SET NULL ON UPDATE SET NULL
);

DROP TABLE IF EXISTS Candidatura;
CREATE TABLE Candidatura(
        idOferta INTEGER CONSTRAINT idOfertaFK REFERENCES OfertaEmprego(id)
				ON DELETE CASCADE ON UPDATE CASCADE,
        idJogador INTEGER, -- REFERENCES 
        dataCandidatura TEXT CONSTRAINT dataCandidaturaNotNull NOT NULL, -- Check dataCandidatura >= Oferta.dataCriacao
        CONSTRAINT CandidaturaPK PRIMARY KEY(idOferta, idJogador)
);

DROP TABLE IF EXISTS Competicao;
CREATE TABLE Competicao(
        id INTEGER CONSTRAINT CompeticaoPK PRIMARY KEY,
        titulo TEXT CONSTRAINT tituloNotNull NOT NULL,
        descricao TEXT,
        dificuldadeMedia REAL -- CONSTRAINT dificuldadeMediaNotNull NOT NULL
                        CONSTRAINT dificuldadeMediaRange CHECK(dificuldadeMedia >= 0 AND dificuldadeMedia <= 10),
        datetimeInicio TEXT CONSTRAINT datetimeInicioNotNull NOT NULL,
        datetimeFim TEXT CONSTRAINT datetimeFimNotNull NOT NULL,
        numParticipantes INTEGER, -- CONSTRAINT numParticipantesNotNull NOT NULL, -- Verificar isto
        premio TEXT, -- 'Descrição do prémio'
        CONSTRAINT integridadeTemporal CHECK(datetimeFim > datetimeInicio)
);

DROP TABLE IF EXISTS Participacao;
CREATE TABLE Participacao(
        idJogador INTEGER, -- REFERENCES
        idCompeticao INTEGER CONSTRAINT idCompeticaoFK REFERENCES Competicao(id)
				ON DELETE CASCADE ON UPDATE CASCADE,
        dataInscricao TEXT CONSTRAINT dataInscricaoNotNull NOT NULL, -- Verificar se inscrição foi antes do inicio da competição
        posicao INTEGER CONSTRAINT posicaoNotNull NOT NULL,
        mudancaRating INTEGER,
        CONSTRAINT ParticipacaoPK PRIMARY KEY(idJogador, idCompeticao) 
);

DROP TABLE IF EXISTS Contribuicao;
CREATE TABLE Contribuicao(
        idOrganizador INTEGER, -- REFERENCES ...,
        idCompeticao INTEGER CONSTRAINT idCompeticaoFK REFERENCES Competicao(id)
				ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT ContribuicaoPK PRIMARY KEY(idOrganizador, idCompeticao)
);

DROP TABLE IF EXISTS Curso;
CREATE TABLE Curso (
        id INTEGER PRIMARY KEY,
        titulo VARCHAR(255),
        descricao VARCHAR(255),
        nivel VARCHAR(255),
        preco INTEGER
);

DROP TABLE IF EXISTS Problema;
CREATE TABLE Problema (
        id INTEGER PRIMARY KEY,
        titulo VARCHAR(255),
        descricao VARCHAR(255),
        dificuldade INTEGER
);

DROP TABLE IF EXISTS Informacao;
CREATE TABLE Informacao (
        idCurso INTEGER REFERENCES Curso(id),
	idJogador INTEGER, -- REFERENCES
	dataInicio INTEGER,
	dataFim INTEGER,
	nota INTEGER,
	PRIMARY KEY(idCurso, idJogador)
);

DROP TABLE IF EXISTS Aula;
CREATE TABLE Aula (
        id INTEGER PRIMARY KEY,
	texto VARCHAR(255),
	videoURL VARCHAR(255),
	idCurso INTEGER REFERENCES Curso(id)
);

DROP TABLE IF EXISTS ProblemaComSolucao;
CREATE TABLE ProblemaComSolucao (
        idProblema INTEGER PRIMARY KEY REFERENCES Problema(id),
        solucao VARCHAR(255)
);

DROP TABLE IF EXISTS Desafio;
CREATE TABLE Desafio (
        id INTEGER PRIMARY KEY,
	idDesafiador INTEGER, -- REFERENCES
	idDesafiado INTEGER, -- REFERENCES
	descricao VARCHAR(255)
);

DROP TABLE IF EXISTS ProblemaCompeticao;
CREATE TABLE ProblemaCompeticao (
        idProblema REFERENCES Problema(id),
	idCompeticao REFERENCES Competicao(id),
	PRIMARY KEY(idProblema, idCompeticao)
);

DROP TABLE IF EXISTS ProblemaAula;
CREATE TABLE ProblemaAula (
        idProblema REFERENCES Problema(id),
	idAula REFERENCES Aula(id),
	PRIMARY KEY(idProblema, idAula)
);

DROP TABLE IF EXISTS ProblemaDesafio;
CREATE TABLE ProblemaDesafio (
        idProblema REFERENCES Problema(id),
	idDesafio REFERENCES Desafio(id),
	PRIMARY KEY(idProblema, idDesafio)
);
