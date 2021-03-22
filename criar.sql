PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Localizacao;
CREATE TABLE Localizacao (
        pais varchar(255) CONSTRAINT paisNotNull NOT NULL,
        cidade varchar(255) CONSTRAINT cidadeNotNull NOT NULL,
        endereco varchar(255) CONSTRAINT enderecoNotNull NOT NULL,
        CONSTRAINT LocalizacaoPK PRIMARY KEY(pais, cidade, endereco)
);

DROP TABLE IF EXISTS OfertaEmprego;
CREATE TABLE OfertaEmprego (
        id INT CONSTRAINT OfertaEmpregoPK PRIMARY KEY,
        posicao varchar(255) CONSTRAINT posicaoNotNull NOT NULL,
        informacao varChar(4096),
        salario double CONSTRAINT salarioPositivo CHECK(salario>=0),
        dataCriacao int CONSTRAINT dataCriacaoNotNull NOT NULL,
        idEmpresa int, -- REFERENCES ...
        localizacaoPais varchar(255),
        localizacaoCidade varchar(255),
        localizacaoEndereco varchar(255),
        CONSTRAINT localizacaoFK FOREIGN KEY(localizacaoPais, localizacaoCidade, localizacaoEndereco) REFERENCES Localizacao(pais,cidade,endereco)
);

DROP TABLE IF EXISTS Candidatura;
CREATE TABLE Candidatura(
        idOferta int CONSTRAINT idOfertaFK REFERENCES OfertaEmprego(id),
        idJogador int, -- REFERENCES 
        dataCandidatura int CONSTRAINT dataCandidaturaNotNull NOT NULL, -- Check dataCandidatura > Oferta.dataCriacao
        CONSTRAINT CandidaturaPK PRIMARY KEY(idOferta, idJogador)
);

DROP TABLE IF EXISTS Competicao;
CREATE TABLE Competicao(
        id int CONSTRAINT CompeticaoPK PRIMARY KEY,
        titulo varchar(255) CONSTRAINT tituloNotNull NOT NULL,
        descricao varchar(4096),
        dificuldadeMedia double CONSTRAINT dificuldadeMediaNotNull NOT NULL
								CONSTRAINT dificuldadeMediaRange CHECK(dificuldadeMedia >= 0 AND dificuldadeMedia <= 10), -- Calcular a dificuldadeMedia e confirmar o valor?
        datetimeInicio int CONSTRAINT datetimeInicioNotNull NOT NULL, -- N sei se é boa ideia guardar isto num int mas por agora wtv
        datetimeFim int CONSTRAINT datetimeFimNotNull NOT NULL,
        numParticipantes int CONSTRAINT numParticipantesNotNull NOT NULL, -- Verificar isto
        premio varchar(255), -- 'Descrição do prémio'
        CONSTRAINT integridadeTemporal CHECK(datetimeFim > datetimeInicio)
);

DROP TABLE IF EXISTS Participacao;
CREATE TABLE Participacao(
        idJogador int, -- REFERENCES
        idCompeticao int CONSTRAINT idCompeticaoFK REFERENCES Competicao(id),
        dataInscricao int CONSTRAINT dataInscricaoNotNull NOT NULL, -- Verificar se inscrição foi antes do inicio da competição
        posicao int CONSTRAINT posicaoNotNull NOT NULL,
        mudancaRating int,
        CONSTRAINT ParticipacaoPK PRIMARY KEY(idJogador, idCompeticao) 
);

DROP TABLE IF EXISTS Contribuicao;
CREATE TABLE Contribuicao(
        idOrganizador int, -- REFERENCES ...,
        idCompeticao int CONSTRAINT idCompeticaoFK REFERENCES Competicao(id),
        CONSTRAINT ContribuicaoPK PRIMARY KEY(idOrganizador, idCompeticao)
);
