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
DROP TABLE IF EXISTS ProblemaComSolucao;
DROP TABLE IF EXISTS Problema;
DROP TABLE IF EXISTS Informacao;
DROP TABLE IF EXISTS Desafio;
DROP TABLE IF EXISTS Aula;
DROP TABLE IF EXISTS Curso;
DROP TABLE IF EXISTS Mensagem;
DROP TABLE IF EXISTS Jogador;
DROP TABLE IF EXISTS Utilizador;

CREATE TABLE Utilizador (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    nome TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
        CONSTRAINT emailFormato CHECK(email LIKE "%@%.%"),
    ultimoLogin INTEGER NOT NULL
        CONSTRAINT ultimoLoginNaoFuturo CHECK (ultimoLogin <= strftime("%s", CURRENT_TIMESTAMP))
);


CREATE TABLE Jogador (
    id INTEGER PRIMARY KEY REFERENCES Utilizador(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    rating INTEGER CONSTRAINT ratingPositivo CHECK (rating >= 0), -- Derived attribute
    numCompeticoes INTEGER CONSTRAINT numCompeticoesPositivo CHECK (numCompeticoes >= 0) -- Derived attribute
);

CREATE TABLE Empresa (
    id INTEGER PRIMARY KEY REFERENCES Utilizador(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    website TEXT
        CONSTRAINT websiteFormato CHECK(website LIKE "%.%"),
    numeroTelefone INTEGER NOT NULL
);

CREATE TABLE Organizador (
    id INTEGER PRIMARY KEY REFERENCES Jogador(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    pontosContribuicao INTEGER NOT NULL DEFAULT 0
        CONSTRAINT pontosContribuicaoPositivos CHECK (pontosContribuicao >= 0)
);

CREATE TABLE Mensagem (
    id INTEGER PRIMARY KEY,
    idUtilizadorRemetente INTEGER NOT NULL REFERENCES Utilizador(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    idUtilizadorDestinatario INTEGER NOT NULL REFERENCES Utilizador(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    texto TEXT NOT NULL,
    datetime INTEGER NOT NULL 
            CONSTRAINT datetimeNaoFutura CHECK (datetime <= strftime("%s", CURRENT_TIMESTAMP))
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
        CONSTRAINT dataCriacaoNaoFutura CHECK (dataCriacao <= strftime("%s", CURRENT_TIMESTAMP)),
    idEmpresa INTEGER NOT NULL REFERENCES Empresa(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    localPais TEXT,
    localCidade TEXT,
    localEndereco TEXT,
    CONSTRAINT localCompletaOuNula CHECK(
        ((localPais IS NULL)   = (localCidade IS NULL))   AND
        ((localCidade IS NULL) = (localEndereco IS NULL)) AND
        ((localPais IS NULL)   = (localEndereco IS NULL))
    ),
    FOREIGN KEY(localPais, localCidade, localEndereco) REFERENCES Localizacao(pais,cidade,endereco)
            ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Candidatura(
    idOferta INTEGER REFERENCES OfertaEmprego(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    idJogador INTEGER REFERENCES Jogador(id)
        ON DELETE CASCADE ON UPDATE CASCADE, 
    dataCandidatura INTEGER NOT NULL
        CONSTRAINT dataCandidaturaNaoFutura CHECK (dataCandidatura <= strftime("%s", CURRENT_TIMESTAMP)),
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
    idJogador INTEGER REFERENCES Jogador(id)
            ON DELETE CASCADE ON UPDATE CASCADE,
    idCompeticao INTEGER REFERENCES Competicao(id)
            ON DELETE CASCADE ON UPDATE CASCADE,
    dataInscricao INTEGER NOT NULL
        CONSTRAINT dataInscricaoNaoFutura CHECK (dataInscricao <= strftime("%s", CURRENT_TIMESTAMP)),
    posicao INTEGER NOT NULL
        CONSTRAINT posicaoMaiorQueZero CHECK(posicao >= 1),
    mudancaRating INTEGER,
    PRIMARY KEY(idJogador, idCompeticao) 
);

CREATE TABLE Contribuicao(
    idOrganizador INTEGER REFERENCES Organizador(id)
            ON DELETE CASCADE ON UPDATE CASCADE,
    idCompeticao INTEGER REFERENCES Competicao(id)
            ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(idOrganizador, idCompeticao)
);

CREATE TABLE Curso (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    descricao TEXT,
    nivel TEXT CONSTRAINT nivelTipo CHECK (nivel IN ("Iniciante", "Medio", "Avancado")),
    preco INTEGER CONSTRAINT precoPositivo CHECK (preco >= 0)
);

CREATE TABLE Problema (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    descricao TEXT NOT NULL,
    dificuldade INTEGER NOT NULL,
    CONSTRAINT dificuldadeIntervalo CHECK (dificuldade >= 0 AND dificuldade <= 10)
);

CREATE TABLE Informacao (
    idCurso INTEGER REFERENCES Curso(id)
        ON DELETE RESTRICT ON UPDATE CASCADE, -- ON DELETE RESTRICT evita perda acidental de notas dos alunos/jogadores do curso
    idJogador INTEGER REFERENCES Jogador(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    dataInicio INTEGER NOT NULL,
    dataFim INTEGER NOT NULL,
    nota INTEGER CONSTRAINT notaIntervalo CHECK (nota >= 0 AND nota <= 20),
    PRIMARY KEY(idCurso, idJogador),
    CONSTRAINT integridadeTemporal CHECK(dataFim > dataInicio)
	
);

CREATE TABLE Aula (
    id INTEGER PRIMARY KEY,
    texto TEXT,
    videoURL TEXT
        CONSTRAINT videoURLFormato CHECK(videoURL LIKE "%.%"),
    idCurso INTEGER NOT NULL REFERENCES Curso(id)
        ON DELETE CASCADE ON UPDATE CASCADE, -- Aula não pode existir sem um curso
    CONSTRAINT aulaTemConteudo CHECK(texto IS NOT NULL OR videoURL IS NOT NULL)
);

CREATE TABLE ProblemaComSolucao (
    idProblema INTEGER PRIMARY KEY REFERENCES Problema(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    solucao TEXT NOT NULL
);

CREATE TABLE Desafio (
    id INTEGER PRIMARY KEY,
    idDesafiador INTEGER NOT NULL REFERENCES Jogador(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    idDesafiado INTEGER NOT NULL REFERENCES Jogador(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    descricao TEXT NOT NULL
);

CREATE TABLE ProblemaCompeticao (
    idProblema REFERENCES Problema(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    idCompeticao REFERENCES Competicao(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(idProblema, idCompeticao)
);

CREATE TABLE ProblemaAula (
    idProblema REFERENCES Problema(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    idAula REFERENCES Aula(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(idProblema, idAula)
);

CREATE TABLE ProblemaDesafio (
    idProblema REFERENCES Problema(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
	idDesafio REFERENCES Desafio(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(idProblema, idDesafio)
);
