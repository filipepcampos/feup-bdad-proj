------ Localização ------
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Portugal', 'Porto', 'Rua 1');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Portugal', 'Porto', 'Rua 2');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Portugal', 'Porto', 'Rua 3');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Portugal', 'Lisboa', 'Rua 1');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Portugal', 'Coimbra', 'Rua 2');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('United Kingdom', 'Edinburgh', 'Street 1');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('United Kingdom', 'Birmingham', 'Street 2');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('United Kingdom', 'London', 'Street 3');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Germany', 'Berlin', 'Straße 1');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Germany', 'Munich', 'Straße 1');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Germany', 'Frankfurt', 'Straße 1');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('United States of America', 'Memphis', 'Street 1');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Egypt', 'Memphis', 'Street 1');
INSERT INTO Localizacao(pais, cidade, endereco) VALUES ('Egypt', 'Memphis', 'شارع 1');

------ Oferta Emprego ------
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoPais, localizacaoCidade, localizacaoEndereco) 
     VALUES (0, 'Full stack Developer', 'We offer a good salary', 12000.0, '08/01/2019', 2,'Portugal', 'Coimbra', 'Rua 2');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoPais, localizacaoCidade, localizacaoEndereco) 
     VALUES (1, 'Software Developer', 'Working here is great!', 50000.0, '30/11/2020', 1,'Portugal', 'Coimbra', 'Rua 2');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoPais, localizacaoCidade, localizacaoEndereco) 
     VALUES (2, 'Software Developer', '404 Information not found', 79999.1, '05/02/2021', 0, 'Portugal', 'Porto', 'Rua 1');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoPais, localizacaoCidade, localizacaoEndereco) 
     VALUES (4, 'Junior Backend Developer', 'Required: At least 5 years of Java experience', 75000.80, '23/03/2021', 1,'Egypt', 'Memphis', 'شارع 1');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoPais, localizacaoCidade, localizacaoEndereco) 
     VALUES (5, 'Senior Software Engineer', 'German Engineering is the best engineering', 79999.1, '05/02/2021', 3, 'Germany', 'Munich', 'Straße 1');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoPais, localizacaoCidade, localizacaoEndereco) 
     VALUES (6, 'Data Scientist', '[Insert information here]', 100000.0, '27/03/2021', 3, 'United States of America', 'Memphis', 'Street 1');

------ Candidatura ------
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (0, 0, "13/02/2019");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (0, 1, "28/10/2019");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (0, 2, "06/02/2021");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (1, 1, "06/12/2020");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (1, 2, "01/12/2020");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (1, 3, "24/01/2021");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (2, 4, "06/02/2021");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (2, 5, "25/03/2021");

------ Competição ------
-- Code Jam --
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (0, "Google Code Jam Qualification Round", "404 Description not found", "26/03/2021 18:00:00", "27/03/2021 18:00:00", NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (1, "Google Code Jam Round 1", "An very interesting description could be included", "12/05/2021 14:00:00", "12/05/2021 15:00:00", NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (2, "Google Code Jam Round 2", "404 Description not found", "23/06/2021 18:00:00", "23/06/2021 20:00:00", "Code Jam T-Shirt");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (3, "Google Code Jam Round 3", "404 Description not found", "26/07/2021 18:00:00", "26/07/2021 20:00:00", NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (4, "Google Code Jam Final", "404 Description not found", "13/09/2021 16:00:00", "13/09/2021 18:00:00", "$15000");
-- Other --
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (5, "Facebook Hacker Cup", "Ipsum Lorem", "07/05/2021 15:00:00", "07/05/2021 18:00:00", "$20000");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (6, "Unrated Competition", "[Description goes here]", "27/03/2021 07:00:00", "27/03/2021 09:00:00", NULL);

------ Participação ------
-- Code Jam --
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 0, "25/03/2021 21:30:23", 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 0, "26/03/2021 17:59:59", 4, 0);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 0, "11/03/2021 15:22:37", 6, -50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 0, "25/03/2021 01:00:00", 5, -35);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 0, "26/03/2021 09:00:00", 2, 100);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 0, "26/03/2021 07:30:00", 1, 220);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 1, "27/03/2021 23:00:00", 1, 300);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 1, "27/03/2021 23:00:00", 3, 50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 1, "27/03/2021 23:00:00", 4, 0);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 1, "27/03/2021 23:00:00", 5, -20);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 1, "27/03/2021 23:00:00", 2, 200);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 2, "12/05/2021 20:00:00", 2, 300);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 2, "12/05/2021 20:00:00", 1, 400);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 2, "12/05/2021 20:00:00", 3, -10);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 2, "12/05/2021 20:00:00", 4, -50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 3, "23/06/2021 23:00:00", 3, -100);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 3, "23/06/2021 23:00:00", 2, 400);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 3, "23/06/2021 23:00:00", 1, 500);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 4, "26/07/2021 23:00:00", 1, 1000);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 4, "26/07/2021 23:00:00", 2, 0);
-- Other --
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 5, "06/05/2021 18:32:22", 1, 50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 5, "06/05/2021 18:32:22", 2, 25);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 5, "06/05/2021 18:32:22", 3, -20);
--
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 6, "26/03/2021 18:32:22", 3, NULL);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 6, "26/03/2021 12:12:42", 1, NULL);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 6, "26/03/2021 15:57:00", 2, NULL);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 6, "26/03/2021 07:15:39", 4, NULL);

------ Contribuição ------
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 0);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 1);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 1);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 2);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 2);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 3);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 3);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 4);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 4);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 5);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 5);
