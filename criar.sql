PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Localizacao;
CREATE TABLE Localizacao (
        pais VARCHAR(255) CONSTRAINT paisNotNull NOT NULL,
        cidade VARCHAR(255) CONSTRAINT cidadeNotNull NOT NULL,
        endereco VARCHAR(255) CONSTRAINT enderecoNotNull NOT NULL,
        CONSTRAINT LocalizacaoPK PRIMARY KEY(pais, cidade, endereco)
);

DROP TABLE IF EXISTS OfertaEmprego;
CREATE TABLE OfertaEmprego (
        id INTEGER CONSTRAINT OfertaEmpregoPK PRIMARY KEY,
        posicao VARCHAR(255) CONSTRAINT posicaoNotNull NOT NULL,
        informacao VARCHAR(4096),
        salario REAL CONSTRAINT salarioPositivo CHECK(salario>=0),
        dataCriacao INTEGER CONSTRAINT dataCriacaoNotNull NOT NULL,
        idEmpresa INTEGER, -- REFERENCES ...
        localizacaoPais VARCHAR(255),
        localizacaoCidade VARCHAR(255),
        localizacaoEndereco VARCHAR(255),
        CONSTRAINT localizacaoFK 
			FOREIGN KEY(localizacaoPais, localizacaoCidade, localizacaoEndereco) 
			REFERENCES Localizacao(pais,cidade,endereco)
			ON DELETE SET NULL ON UPDATE SET NULL
);

DROP TABLE IF EXISTS Candidatura;
CREATE TABLE Candidatura(
        idOferta INTEGER CONSTRAINT idOfertaFK REFERENCES OfertaEmprego(id)
				ON DELETE CASCADE ON UPDATE CASCADE,
        idJogador INTEGER, -- REFERENCES 
        dataCandidatura INTEGER CONSTRAINT dataCandidaturaNotNull NOT NULL, -- Check dataCandidatura > Oferta.dataCriacao
        CONSTRAINT CandidaturaPK PRIMARY KEY(idOferta, idJogador)
);

DROP TABLE IF EXISTS Competicao;
CREATE TABLE Competicao(
        id INTEGER CONSTRAINT CompeticaoPK PRIMARY KEY,
        titulo VARCHAR(255) CONSTRAINT tituloNotNull NOT NULL,
        descricao VARCHAR(4096),
        dificuldadeMedia REAL CONSTRAINT dificuldadeMediaNotNull NOT NULL
								CONSTRAINT dificuldadeMediaRange CHECK(dificuldadeMedia >= 0 AND dificuldadeMedia <= 10), -- Calcular a dificuldadeMedia e confirmar o valor?
        datetimeInicio INTEGER CONSTRAINT datetimeInicioNotNull NOT NULL, -- N sei se é boa ideia guardar isto num INTEGER mas por agora wtv
        datetimeFim INTEGER CONSTRAINT datetimeFimNotNull NOT NULL,
        numParticipantes INTEGER CONSTRAINT numParticipantesNotNull NOT NULL, -- Verificar isto
        premio VARCHAR(255), -- 'Descrição do prémio'
        CONSTRAINT integridadeTemporal CHECK(datetimeFim > datetimeInicio)
);

DROP TABLE IF EXISTS Participacao;
CREATE TABLE Participacao(
        idJogador INTEGER, -- REFERENCES
        idCompeticao INTEGER CONSTRAINT idCompeticaoFK REFERENCES Competicao(id)
				ON DELETE CASCADE ON UPDATE CASCADE,
        dataInscricao INTEGER CONSTRAINT dataInscricaoNotNull NOT NULL, -- Verificar se inscrição foi antes do inicio da competição
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
