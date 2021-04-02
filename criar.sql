.headers on
.mode columns
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Localizacao;
DROP TABLE IF EXISTS Candidatura;
DROP TABLE IF EXISTS OfertaEmprego;
DROP TABLE IF EXISTS Empresa;
DROP TABLE IF EXISTS Participacao;
DROP TABLE IF EXISTS Contribuicao;
DROP TABLE IF EXISTS ProblemaAula;
DROP TABLE IF EXISTS ProblemaCompeticao;
DROP TABLE IF EXISTS ProblemaDesafio;
DROP TABLE IF EXISTS Competicao;
DROP TABLE IF EXISTS Organizador;
DROP TABLE IF EXISTS Curso;
DROP TABLE IF EXISTS ProblemaComSolucao;
DROP TABLE IF EXISTS Problema;
DROP TABLE IF EXISTS Informacao;
DROP TABLE IF EXISTS Desafio;
DROP TABLE IF EXISTS Aula;
DROP TABLE IF EXISTS Mensagem;
DROP TABLE IF EXISTS Jogador;
DROP TABLE IF EXISTS Utilizador;

CREATE TABLE Utilizador (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    nome TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    ultimoLogin INTEGER NOT NULL
        CONSTRAINT ultimoLoginNaoFuturo CHECK (ultimoLogin <= strftime("%s"))
);


CREATE TABLE Jogador (
    id INTEGER PRIMARY KEY REFERENCES Utilizador(id),
    rating INTEGER CONSTRAINT ratingPositivo CHECK (rating >= 0), -- Derived attribute
    numCompeticoes INTEGER CONSTRAINT numCompeticoesPositivo CHECK (numCompeticoes >= 0) -- Derived attribute
);

CREATE TABLE Empresa (
    id INTEGER PRIMARY KEY REFERENCES Utilizador(id),
    website TEXT,
    numeroTelefone INTEGER NOT NULL
);

CREATE TABLE Organizador (
    id INTEGER PRIMARY KEY REFERENCES Jogador(id),
    pontosContribuicao INTEGER NOT NULL DEFAULT 0
        CONSTRAINT pontosContribuicaoPositivos CHECK (pontosContribuicao >= 0)
);

CREATE TABLE Mensagem (
    id INTEGER PRIMARY KEY,
    idUtilizadorRemetente INTEGER REFERENCES Utilizador(id) NOT NULL,
    idUtilizadorDestinatario INTEGER REFERENCES Utilizador(id) NOT NULL,
    texto TEXT NOT NULL,
    datetime INTEGER NOT NULL 
            CONSTRAINT datetimeNaoFutura CHECK (datetime <= strftime("%s"))
);

CREATE TABLE Localizacao (
    pais TEXT NOT NULL,
    cidade TEXT NOT NULL,
    endereco TEXT NOT NULL,
    PRIMARY KEY(pais, cidade, endereco)
);

CREATE TABLE OfertaEmprego (
    id INTEGER PRIMARY KEY,
    posicao TEXT NOT NULL,
    informacao TEXT,
    salario REAL CONSTRAINT salarioPositivo CHECK(salario>=0),
    dataCriacao INTEGER NOT NULL
        CONSTRAINT dataCriacaoNaoFutura CHECK (dataCriacao <= strftime("%s")),
    idEmpresa INTEGER NOT NULL REFERENCES Empresa(id),
    localPais TEXT,
    localCidade TEXT,
    localEndereco TEXT,
    CONSTRAINT localCompletaOuNula CHECK(
        ((localPais IS NULL)   = (localCidade IS NULL))   AND
        ((localCidade IS NULL) = (localEndereco IS NULL)) AND
        ((localPais IS NULL)   = (localEndereco IS NULL))
    ),
    FOREIGN KEY(localPais, localCidade, localEndereco) REFERENCES Localizacao(pais,cidade,endereco)
            ON DELETE SET NULL ON UPDATE SET NULL
);

CREATE TABLE Candidatura(
    idOferta INTEGER REFERENCES OfertaEmprego(id)
            ON DELETE CASCADE ON UPDATE CASCADE,
    idJogador INTEGER REFERENCES Jogador(id), 
    dataCandidatura INTEGER NOT NULL
        CONSTRAINT dataCandidaturaNaoFutura CHECK (dataCandidatura <= strftime("%s")),
    PRIMARY KEY(idOferta, idJogador)
);

CREATE TABLE Competicao(
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    descricao TEXT,
    dificuldadeMedia REAL -- Derived Attribute
                    CONSTRAINT dificuldadeMediaIntervalo CHECK(dificuldadeMedia >= 0 AND dificuldadeMedia <= 10),
    datetimeInicio INTEGER NOT NULL,
    datetimeFim INTEGER NOT NULL,
    numParticipantes INTEGER, -- Derived Attribute
    premio TEXT, -- 'Descrição do prémio'
    CONSTRAINT integridadeTemporal CHECK(datetimeFim > datetimeInicio)
);

CREATE TABLE Participacao(
    idJogador INTEGER REFERENCES Jogador(id),
    idCompeticao INTEGER REFERENCES Competicao(id)
            ON DELETE CASCADE ON UPDATE CASCADE,
    dataInscricao INTEGER NOT NULL
        CONSTRAINT dataInscricaoNaoFutura CHECK (dataInscricao <= strftime("%s")),
    posicao INTEGER NOT NULL,
    mudancaRating INTEGER,
    PRIMARY KEY(idJogador, idCompeticao) 
);

CREATE TABLE Contribuicao(
    idOrganizador INTEGER REFERENCES Organizador(id),
    idCompeticao INTEGER REFERENCES Competicao(id)
            ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(idOrganizador, idCompeticao)
);

CREATE TABLE Curso (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    descricao TEXT,
    nivel TEXT,
    preco INTEGER
);

CREATE TABLE Problema (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    descricao TEXT NOT NULL,
    dificuldade INTEGER NOT NULL
);

CREATE TABLE Informacao (
    idCurso INTEGER REFERENCES Curso(id),
	idJogador INTEGER REFERENCES Jogador(id),
	dataInicio INTEGER NOT NULL,
	dataFim INTEGER NOT NULL,
	PRIMARY KEY(idCurso, idJogador)
);

CREATE TABLE Aula (
    id INTEGER PRIMARY KEY,
	texto TEXT,
	videoURL TEXT,
	idCurso INTEGER REFERENCES Curso(id) NOT NULL,
    CONSTRAINT aulaTemConteudo CHECK(texto IS NOT NULL OR videoURL IS NOT NULL)
);

CREATE TABLE ProblemaComSolucao (
    idProblema INTEGER PRIMARY KEY REFERENCES Problema(id),
    solucao TEXT NOT NULL
);

CREATE TABLE Desafio (
    id INTEGER PRIMARY KEY,
	idDesafiador INTEGER REFERENCES Jogador(id) NOT NULL,
	idDesafiado INTEGER REFERENCES Jogador(id) NOT NULL,
	descricao TEXT
);

CREATE TABLE ProblemaCompeticao (
    idProblema REFERENCES Problema(id),
	idCompeticao REFERENCES Competicao(id),
	PRIMARY KEY(idProblema, idCompeticao)
);

CREATE TABLE ProblemaAula (
    idProblema REFERENCES Problema(id),
	idAula REFERENCES Aula(id),
	PRIMARY KEY(idProblema, idAula)
);

CREATE TABLE ProblemaDesafio (
    idProblema REFERENCES Problema(id),
	idDesafio REFERENCES Desafio(id),
	PRIMARY KEY(idProblema, idDesafio)
);
