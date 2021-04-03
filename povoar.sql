INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (0, 'a', 'a',  'a@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (1, 'b', 'b',  'b@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (2, 'c', 'c',  'c@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (3, 'd', 'd',  'd@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (4, 'e', 'e',  'e@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (5, 'f', 'f',  'f@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (6, 'g', 'g',  'g@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (7, 'h', 'h',  'h@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (8, 'i', 'i',  'i@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (9, 'j', 'j',  'j@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (10, 'k', 'k', 'k@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (11, 'l', 'l', 'l@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (12, 'm', 'm', 'm@gmail.com', strftime('%s'));
INSERT INTO Utilizador(id,username,nome,email,ultimoLogin) VALUES (13, 'n', 'n', 'n@gmail.com', strftime('%s'));

INSERT INTO Jogador(id) VALUES (0);
INSERT INTO Jogador(id) VALUES (1);
INSERT INTO Jogador(id) VALUES (2);
INSERT INTO Jogador(id) VALUES (3);
INSERT INTO Jogador(id) VALUES (4);
INSERT INTO Jogador(id) VALUES (5);
INSERT INTO Jogador(id) VALUES (6);
INSERT INTO Jogador(id) VALUES (7);
INSERT INTO Jogador(id) VALUES (8);
INSERT INTO Jogador(id) VALUES (9);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (6, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (7, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (8, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (9, 0);
INSERT INTO Empresa(id, website, numeroTelefone) VALUES (10, NULL, 0);
INSERT INTO Empresa(id, website, numeroTelefone) VALUES (11, NULL, 0);
INSERT INTO Empresa(id, website, numeroTelefone) VALUES (12, NULL, 0);
INSERT INTO Empresa(id, website, numeroTelefone) VALUES (13, NULL, 0);



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
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco) 
     VALUES (0, 'Full stack Developer', 'We offer a good salary', 12000.0, strftime('%s', '2019-08-01'), 10, 'Portugal', 'Porto', 'Rua 2');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco) 
     VALUES (1, 'Software Developer', 'Working here is great!', 50000.0, strftime('%s','2020-11-30'), 11, 'Portugal', 'Coimbra', 'Rua 2');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco)
     VALUES (2, 'Software Developer', '404 Information not found', 79999.1, strftime('%s','2021-02-05'), 10, 'Portugal', 'Porto', 'Rua 2');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco) 
     VALUES (4, 'Junior Backend Developer', 'Required: At least 5 years of Java experience', 75000.80, strftime('%s','2021-03-23'), 11, 'Egypt', 'Memphis', 'شارع 1');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco) 
     VALUES (5, 'Senior Software Engineer', 'German Engineering is the best engineering', 79999.1, strftime('%s','2021-02-05'), 13, 'Germany', 'Berlin', 'Straße 1');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco) 
     VALUES (6, 'Data Scientist', '[Insert information here]', 100000.0, strftime('%s','2021-03-27'), 13, 'United States of America', 'Memphis', 'Street 1');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco) 
     VALUES (7, 'Remote Frontend Developer', '[Insert information here]', 125000.0, strftime('%s','2021-03-27'), 13, NULL, NULL, NULL);


------ Candidatura ------
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (0, 0, strftime('%s',"2019-02-13"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (0, 1, strftime('%s',"2019-10-28"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (0, 2, strftime('%s',"2021-02-06"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (1, 1, strftime('%s',"2020-12-06"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (1, 2, strftime('%s',"2020-12-01"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (1, 3, strftime('%s',"2021-01-24"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (2, 4, strftime('%s',"2021-02-06"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (2, 5, strftime('%s',"2021-03-25"));

------ Competição ------
-- Code Jam --
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (0, "Google Code Jam Qualification Round", "404 Description not found", strftime('%s',"2021-03-26 18:00:00"), strftime('%s',"2021-03-27 18:00:00"), NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (1, "Google Code Jam Round 1", "An very interesting description could be included", strftime('%s',"2021-05-12 14:00:00"), strftime('%s',"2021-05-12 15:00:00"), NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (2, "Google Code Jam Round 2", "404 Description not found", strftime('%s',"2021-06-23 18:00:00"), strftime('%s',"2021-06-23 20:00:00"), "Code Jam T-Shirt");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (3, "Google Code Jam Round 3", "404 Description not found", strftime('%s',"2021-07-26 18:00:00"), strftime('%s',"2021-07-26 20:00:00"), NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (4, "Google Code Jam Final", "404 Description not found", strftime('%s',"2021-09-13 16:00:00"), strftime('%s',"2021-09-13 18:00:00"), "$15000");
-- Other --
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (5, "Facebook Hacker Cup", "Ipsum Lorem", strftime('%s',"2021-05-07 15:00:00"), strftime('%s',"2021-05-07 18:00:00"), "$20000");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (6, "Unrated Competition", "[Description goes here]", strftime('%s',"2021-03-27 07:00:00"), strftime('%s',"2021-03-27 09:00:00"), NULL);

------ Participação ------
-- Code Jam --
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 0, strftime('%s',"2021-03-25 21:30:23"), 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 0, strftime('%s',"2021-03-26 17:59:59"), 4, 0);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 0, strftime('%s',"2021-03-11 15:22:37"), 6, -50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 0, strftime('%s',"2021-03-25 01:00:00"), 5, -35);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 0, strftime('%s',"2021-03-26 09:00:00"), 2, 100);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 0, strftime('%s',"2021-03-26 07:30:00"), 1, 220);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 1, strftime('%s',"2021-03-27 23:00:00"), 1, 300);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 1, strftime('%s',"2021-03-27 23:00:00"), 3, 50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 1, strftime('%s',"2021-03-27 23:00:00"), 4, 0);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 1, strftime('%s',"2021-03-27 23:00:00"), 5, -20);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 1, strftime('%s',"2021-03-27 23:00:00"), 2, 200);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 2, strftime('%s',"2021-03-17 20:00:00"), 2, 300);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 2, strftime('%s',"2021-03-17 20:00:00"), 1, 400);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 2, strftime('%s',"2021-03-17 20:00:00"), 3, -10);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 2, strftime('%s',"2021-03-17 20:00:00"), 4, -50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 3, strftime('%s',"2021-03-23 23:00:00"), 3, -100);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 3, strftime('%s',"2021-03-23 23:00:00"), 2, 400);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 3, strftime('%s',"2021-03-23 23:00:00"), 1, 500);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 4, strftime('%s',"2021-03-26 23:00:00"), 1, 1000);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 4, strftime('%s',"2021-03-26 23:00:00"), 2, 0);
-- Other --
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 5, strftime('%s',"2021-03-06 18:32:22"), 1, 50);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 5, strftime('%s',"2021-03-06 18:32:22"), 2, 25);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 5, strftime('%s',"2021-03-06 18:32:22"), 3, -20);
--
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 6, strftime('%s',"2021-02-26 18:32:22"), 3, NULL);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 6, strftime('%s',"2021-02-26 12:12:42"), 1, NULL);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (0, 6, strftime('%s',"2021-02-26 15:57:00"), 2, NULL);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 6, strftime('%s',"2021-02-26 07:15:39"), 4, NULL);

------ Contribuição ------
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 0);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 1);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (8, 1);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 2);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (8, 2);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 3);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (8, 3);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 4);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (9, 4);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (8, 4);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 5);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 5);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 6);