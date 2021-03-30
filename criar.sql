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
        dataCriacao TEXT 
            CONSTRAINT dataCriacaoNotNull NOT NULL
            CONSTRAINT dataCriacaoFormat CHECK (dataCriacao LIKE "____-__-__")
            CONSTRAINT dataCriacaoValue CHECK (dataCriacao IS strftime("%Y-%m-%d",dataCriacao)) -- Filter out "2021-01-99", for example
            CONSTRAINT dataCriacaoNotFuture CHECK (dataCriacao <= strftime("%Y-%m-%d")),
        idEmpresa INTEGER CONSTRAINT idEmpresaNotNull NOT NULL, -- REFERENCES ...
        localizacaoId INT CONSTRAINT localizacaoFK REFERENCES Localizacao(id) ON DELETE SET NULL ON UPDATE SET NULL
);

DROP TABLE IF EXISTS Candidatura;
CREATE TABLE Candidatura(
        idOferta INTEGER CONSTRAINT idOfertaFK REFERENCES OfertaEmprego(id)
				ON DELETE CASCADE ON UPDATE CASCADE,
        idJogador INTEGER, -- REFERENCES 
        dataCandidatura TEXT 
            CONSTRAINT dataCandidaturaNotNull NOT NULL -- Check dataCandidatura >= Oferta.dataCriacao
            CONSTRAINT dataCandidaturaFormat CHECK (dataCandidatura LIKE "____-__-__")
            CONSTRAINT dataCandidaturaValue CHECK (dataCandidatura IS strftime("%Y-%m-%d",dataCandidatura)) -- Filter out "2021-01-99", for example
            CONSTRAINT dataCandidaturaNotFuture CHECK (dataCandidatura <= strftime("%Y-%m-%d")),
        CONSTRAINT CandidaturaPK PRIMARY KEY(idOferta, idJogador)
);

DROP TABLE IF EXISTS Competicao;
CREATE TABLE Competicao(
        id INTEGER CONSTRAINT CompeticaoPK PRIMARY KEY,
        titulo TEXT CONSTRAINT tituloNotNull NOT NULL,
        descricao TEXT,
        dificuldadeMedia REAL -- CONSTRAINT dificuldadeMediaNotNull NOT NULL
                        CONSTRAINT dificuldadeMediaRange CHECK(dificuldadeMedia >= 0 AND dificuldadeMedia <= 10),
        datetimeInicio TEXT 
            CONSTRAINT datetimeInicioNotNull NOT NULL
            CONSTRAINT datetimeInicioFormat CHECK (datetimeInicio LIKE "____-__-__ __:__:__")
            CONSTRAINT datetimeInicioValue CHECK (datetimeInicio IS strftime("%Y-%m-%d %H:%M:%S", datetimeInicio)),
        datetimeFim TEXT 
            CONSTRAINT datetimeFimNotNull NOT NULL
            CONSTRAINT datetimeFimFormat CHECK (datetimeFim LIKE "____-__-__ __:__:__")
            CONSTRAINT datetimeFimValue CHECK (datetimeFim IS strftime("%Y-%m-%d %H:%M:%S", datetimeFim)),
        numParticipantes INTEGER, -- CONSTRAINT numParticipantesNotNull NOT NULL, -- Verificar isto
        premio TEXT, -- 'Descrição do prémio'
        CONSTRAINT integridadeTemporal CHECK(datetimeFim > datetimeInicio)
);

DROP TABLE IF EXISTS Participacao;
CREATE TABLE Participacao(
        idJogador INTEGER, -- REFERENCES
        idCompeticao INTEGER CONSTRAINT idCompeticaoFK REFERENCES Competicao(id)
				ON DELETE CASCADE ON UPDATE CASCADE,
        dataInscricao TEXT  -- Verificar se inscrição foi antes do inicio da competição
            CONSTRAINT dataInscricaoNotNull NOT NULL
            CONSTRAINT dataInscricaoFormat CHECK (dataInscricao LIKE "____-__-__ __:__:__")
            CONSTRAINT dataInscricaoValue CHECK (dataInscricao IS strftime("%Y-%m-%d %H:%M:%S",dataInscricao)) 
            CONSTRAINT dataInscricaoNotFuture CHECK (dataInscricao <= strftime("%Y-%m-%d %H:%M:%S")),
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
        titulo TEXT,
        descricao TEXT,
        nivel TEXT,
        preco INTEGER
);

DROP TABLE IF EXISTS Problema;
CREATE TABLE Problema (
        id INTEGER PRIMARY KEY,
        titulo TEXT,
        descricao TEXT,
        dificuldade INTEGER
);

DROP TABLE IF EXISTS Informacao;
CREATE TABLE Informacao (
    idCurso INTEGER REFERENCES Curso(id),
	idJogador INTEGER, -- REFERENCES
	dataInicio TEXT
        CONSTRAINT dataInicioNotNull NOT NULL
        CONSTRAINT dataInicioFormat CHECK (dataInicio LIKE "____-__-__")
        CONSTRAINT dataInicioValue CHECK (dataInicio IS strftime("%Y-%m-%d",dataInicio)),
	dataFim TEXT
        CONSTRAINT dataFimNotNull NOT NULL
        CONSTRAINT dataFimFormat CHECK (dataFim LIKE "____-__-__")
        CONSTRAINT dataFimValue CHECK (dataFim IS strftime("%Y-%m-%d",dataFim)),
	PRIMARY KEY(idCurso, idJogador)
);

DROP TABLE IF EXISTS Aula;
CREATE TABLE Aula (
    id INTEGER PRIMARY KEY,
	texto TEXT,
	videoURL TEXT,
	idCurso INTEGER REFERENCES Curso(id)
);

DROP TABLE IF EXISTS ProblemaComSolucao;
CREATE TABLE ProblemaComSolucao (
    idProblema INTEGER PRIMARY KEY REFERENCES Problema(id),
    solucao TEXT
);

DROP TABLE IF EXISTS Desafio;
CREATE TABLE Desafio (
    id INTEGER PRIMARY KEY,
	idDesafiador INTEGER, -- REFERENCES
	idDesafiado INTEGER, -- REFERENCES
	descricao TEXT
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
