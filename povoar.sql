------ Localização ------
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (0, 'Portugal', 'Porto', 'Rua 1');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (1, 'Portugal', 'Porto', 'Rua 2');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (2, 'Portugal', 'Porto', 'Rua 3');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (3, 'Portugal', 'Lisboa', 'Rua 1');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (4, 'Portugal', 'Coimbra', 'Rua 2');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (5, 'United Kingdom', 'Edinburgh', 'Street 1');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (6, 'United Kingdom', 'Birmingham', 'Street 2');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (7, 'United Kingdom', 'London', 'Street 3');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (8, 'Germany', 'Berlin', 'Straße 1');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (9, 'Germany', 'Munich', 'Straße 1');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (10, 'Germany', 'Frankfurt', 'Straße 1');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (11, 'United States of America', 'Memphis', 'Street 1');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (12, 'Egypt', 'Memphis', 'Street 1');
INSERT INTO Localizacao(id, pais, cidade, endereco) VALUES (13, 'Egypt', 'Memphis', 'شارع 1');

------ Oferta Emprego ------
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
     VALUES (0, 'Full stack Developer', 'We offer a good salary', 12000.0, '2019-08-01', 2, 1);
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
     VALUES (1, 'Software Developer', 'Working here is great!', 50000.0, '2020-11-30', 1, 4);
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId)
     VALUES (2, 'Software Developer', '404 Information not found', 79999.1, '2021-02-05', 0, 1);
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
     VALUES (4, 'Junior Backend Developer', 'Required: At least 5 years of Java experience', 75000.80, '2021-03-23', 1, 13);
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
     VALUES (5, 'Senior Software Engineer', 'German Engineering is the best engineering', 79999.1, '2021-02-05', 3, 8);
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
     VALUES (6, 'Data Scientist', '[Insert information here]', 100000.0, '2021-05-27', 3, 11);
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
     VALUES (7, 'Remote Frontend Developer', '[Insert information here]', 125000.0, '2021-03-27', 3, NULL);


------ Candidatura ------
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (0, 0, "2019-02-13");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (0, 1, "2019-10-28");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (0, 2, "2021-02-06");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (1, 1, "2020-12-06");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (1, 2, "2020-12-01");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (1, 3, "2021-01-24");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (2, 4, "2021-02-06");
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (2, 5, "2021-03-25");

------ Competição ------
-- Code Jam --
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (0, "Google Code Jam Qualification Round", "404 Description not found", "2021-03-26 18:00:00", "2021-03-27 18:00:00", NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (1, "Google Code Jam Round 1", "An very interesting description could be included", "2021-05-12 14:00:00", "2021-05-12 15:00:00", NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (2, "Google Code Jam Round 2", "404 Description not found", "2021-06-23 18:00:00", "2021-06-23 20:00:00", "Code Jam T-Shirt");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (3, "Google Code Jam Round 3", "404 Description not found", "2021-07-26 18:00:00", "2021-07-26 20:00:00", NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (4, "Google Code Jam Final", "404 Description not found", "2021-09-13 16:00:00", "2021-09-13 18:00:00", "$15000");
-- Other --
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (5, "Facebook Hacker Cup", "Ipsum Lorem", "2021-05-07 15:00:00", "2021-05-07 18:00:00", "$20000");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (6, "Unrated Competition", "[Description goes here]", "2021-03-27 07:00:00", "2021-03-27 09:00:00", NULL);

------ Participação ------
-- Code Jam --
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 0, "2021-03-25 21:30:23", 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 0, "2021-03-26 17:59:59", 4, 0);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 0, "2021-03-11 15:22:37", 6, -50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 0, "2021-03-25 01:00:00", 5, -35);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 0, "2021-03-26 09:00:00", 2, 100);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 0, "2021-03-26 07:30:00", 1, 220);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 1, "2021-03-27 23:00:00", 1, 300);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 1, "2021-03-27 23:00:00", 3, 50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 1, "2021-03-27 23:00:00", 4, 0);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 1, "2021-03-27 23:00:00", 5, -20);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 1, "2021-03-27 23:00:00", 2, 200);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 2, "2021-05-17 20:00:00", 2, 300);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 2, "2021-05-17 20:00:00", 1, 400);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 2, "2021-05-17 20:00:00", 3, -10);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 2, "2021-05-17 20:00:00", 4, -50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 3, "2021-06-23 23:00:00", 3, -100);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 3, "2021-06-23 23:00:00", 2, 400);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 3, "2021-06-23 23:00:00", 1, 500);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 4, "2021-07-26 23:00:00", 1, 1000);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 4, "2021-07-26 23:00:00", 2, 0);
-- Other --
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 5, "2021-05-06 18:32:22", 1, 50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 5, "2021-05-06 18:32:22", 2, 25);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 5, "2021-05-06 18:32:22", 3, -20);
--
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 6, "2021-06-26 18:32:22", 3, NULL);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 6, "2021-06-26 12:12:42", 1, NULL);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 6, "2021-06-26 15:57:00", 2, NULL);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 6, "2021-06-26 07:15:39", 4, NULL);

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
