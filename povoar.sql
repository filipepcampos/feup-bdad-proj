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

------ Curso ------
INSERT INTO Curso(id, titulo, descricao, nivel, preco) VALUES (0, "MIEIC", NULL, "Avancado", 70);
INSERT INTO Curso(id, titulo, descricao, nivel, preco) VALUES (1, "Learn how to use SQL", "In this course we will teach you how to use SQL", "Iniciante", 0);
INSERT INTO Curso(id, titulo, descricao, nivel, preco) VALUES (2, "CS50: Introduction to Computer Science", NULL, "Medio", 0);
INSERT INTO Curso(id, titulo, descricao, nivel, preco) VALUES (3, "CS50's Web Programming with Python and JavaScript", "12 weeks long", "Avancado", 50);
INSERT INTO Curso(id, titulo, descricao, nivel, preco) VALUES (4, "Quantitative Methods for Biology" , NULL, "Avancado", 10);
INSERT INTO Curso(id, titulo, descricao, nivel, preco) VALUES (5, "Learn to code", "We offer you the best material", "Iniciante", 0);
INSERT INTO Curso(id, titulo, descricao, nivel, preco) VALUES (6, "MIEEC", NULL, "Avancado", 70);
INSERT INTO Curso(id, titulo, descricao, nivel, preco) VALUES (7, "Intro to JS: Drawing & Animation", NULL, "Medio", 25);

------ Problema ------
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (0, "Problema 0", "Problema 0", 0);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (1, "Factorial recursive", "Create a program that calculates the factorial of a number using recursion", 5);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (2, "Change making problem", "Change making problem", 8);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (3, "Square root", "Implement a method that calculates the square root of a number", 1);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (4, "Problema 4", "Problema 4", 4);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (5, "Implement the serial port", "The serial port is...", 10);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (6, "Problem 6", "Problem 6", 6);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (7, "Biology is cool", "Biology related programming", 7);

------ Informação ------
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (0, 0, strftime('%s',"2021-03-23 23:00:00"), strftime('%s',"2021-03-24 23:00:00"), 20);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (0, 4, strftime('%s',"2021-03-23 23:00:00"), strftime('%s',"2021-03-24 23:00:00"), 17);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (0, 7, strftime('%s',"2021-03-23 23:00:00"), strftime('%s',"2021-03-24 23:00:00"), 14);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (0, 2, strftime('%s',"2021-03-23 23:00:00"), strftime('%s',"2021-03-24 23:00:00"), 11);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (1, 1, strftime('%s',"2021-02-12 11:00:00"), strftime('%s',"2021-02-23 23:00:00"), 15);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (1, 2, strftime('%s',"2021-02-12 11:00:00"), strftime('%s',"2021-02-23 23:00:00"), 12);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (1, 3, strftime('%s',"2021-02-12 11:00:00"), strftime('%s',"2021-02-23 23:00:00"), 8);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (1, 4, strftime('%s',"2021-02-12 11:00:00"), strftime('%s',"2021-02-23 23:00:00"), 19);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (2, 2, strftime('%s',"2021-01-12 16:00:00"), strftime('%s',"2021-02-12 16:00:00"), 0);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (2, 5, strftime('%s',"2021-01-12 16:00:00"), strftime('%s',"2021-02-12 16:00:00"), 13);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (2, 6, strftime('%s',"2021-01-12 16:00:00"), strftime('%s',"2021-02-12 16:00:00"), 14);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (3, 1, strftime('%s',"2020-12-24 16:00:00"), strftime('%s',"2021-01-12 16:00:00"), 9.5);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (3, 3, strftime('%s',"2020-12-24 16:00:00"), strftime('%s',"2020-12-25 16:00:00"), 14);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (4, 4, strftime('%s',"2020-08-13 16:00:00"), strftime('%s',"2020-10-24 19:00:00"), 18);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (5, 2, strftime('%s',"2020-05-17 16:00:00"), strftime('%s',"2020-06-17 16:00:00"), 7);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (6, 5, strftime('%s',"2021-02-17 16:00:00"), strftime('%s',"2021-02-26 20:00:00"), 11);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (7, 6, strftime('%s',"2021-01-17 16:00:00"), strftime('%s',"2021-02-17 16:00:00"), 19);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (7, 2, strftime('%s',"2021-01-17 16:00:00"), strftime('%s',"2021-02-17 16:00:00"), 9);
INSERT INTO Informacao(idCurso, idJogador, dataInicio, dataFim, nota) VALUES (7, 3, strftime('%s',"2021-01-17 16:00:00"), strftime('%s',"2021-02-17 16:00:00"), 13);

------ Aula ------
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (0, "MEST", NULL, 0);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (1, "BDAD", NULL, 0);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (2, "LPOO", NULL, 0);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (3, "MNUM(Não existe)", NULL, 0);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (4, "PROG", NULL, 0);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (5, "An introduction to SQL", NULL, 1);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (6, "Conceptual modeling", NULL, 1);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (7, "Creating an sqlite database", NULL, 1);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (8, "Populating an sqlite database", NULL, 1);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (9, "What is Computer Science?", NULL, 2);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (10, "Discrete math", NULL, 2);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (11, "Theory of computation", NULL, 2);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (12, "Getting started with Python", NULL, 3);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (13, "Basics of HTML and CSS", NULL, 3);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (14, "Basics of javascript", NULL, 3);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (15, "Programming in Biology", NULL, 4);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (16, "Introduction to Programming and Computer Science - Full Course", "https://youtu.be/zOjov-2OZ0E", 5);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (17,NULL, "https://youtu.be/dQw4w9WgXcQ", 6);
INSERT INTO Aula(id, texto, videoURL, idCurso) VALUES (18,NULL, "https://youtu.be/FCMxA3m_Imc", 7);

------ ProblemaComSolução ------
INSERT INTO ProblemaComSolucao(idProblema, solucao) VALUES (0, "Just show up");
INSERT INTO ProblemaComSolucao(idProblema, solucao) VALUES (1, "Check the recommended book");
INSERT INTO ProblemaComSolucao(idProblema, solucao) VALUES (2, "Implement a backtracking algorithm");
INSERT INTO ProblemaComSolucao(idProblema, solucao) VALUES (3, "Documentation exists to help you");
INSERT INTO ProblemaComSolucao(idProblema, solucao) VALUES (4, "Solução Problema 4");
INSERT INTO ProblemaComSolucao(idProblema, solucao) VALUES (5, "Give up and do something else");
INSERT INTO ProblemaComSolucao(idProblema, solucao) VALUES (6, "Problem 6 solution");
INSERT INTO ProblemaComSolucao(idProblema, solucao) VALUES (7, "Use the X algorithm to figure out...");

------ Desafio ------
INSERT INTO Desafio(id, idDesafiador, idDesafiado, descricao) VALUES (0, 0, 1, "Solve the problem before your opponent does");
INSERT INTO Desafio(id, idDesafiador, idDesafiado, descricao) VALUES (1, 2, 3, "The solution with the better time complexety will win");
INSERT INTO Desafio(id, idDesafiador, idDesafiado, descricao) VALUES (2, 4, 5, "5 multiple choice questions, player with more correct answers win");
INSERT INTO Desafio(id, idDesafiador, idDesafiado, descricao) VALUES (3, 6, 7, "Solvee the problem to win the challenge");

------ ProblemaCompetição ------
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (0, 0);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (0, 1);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (1, 0);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (1, 1);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (2, 3);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (3, 2);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (3, 4);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (4, 4);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (5, 5);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (6, 5);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (7, 6);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (2, 6);


------ ProblemaAula ------
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (0, 1);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (0, 0);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (1, 1);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (2, 2);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (3, 2);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (4, 3);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (5, 3);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (7, 4);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (6, 4);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (5, 5);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (2, 5);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (6, 6);
INSERT INTO ProblemaAula(idProblema, idAula) VALUES (7, 7);

------ ProblemaDesafio ------
INSERT INTO ProblemaDesafio(idProblema, idDesafio) VALUES (1,0);
INSERT INTO ProblemaDesafio(idProblema, idDesafio) VALUES (0,1);
INSERT INTO ProblemaDesafio(idProblema, idDesafio) VALUES (2,2);
INSERT INTO ProblemaDesafio(idProblema, idDesafio) VALUES (3,2);
INSERT INTO ProblemaDesafio(idProblema, idDesafio) VALUES (4,2);
INSERT INTO ProblemaDesafio(idProblema, idDesafio) VALUES (5,2);
INSERT INTO ProblemaDesafio(idProblema, idDesafio) VALUES (6,2);
INSERT INTO ProblemaDesafio(idProblema, idDesafio) VALUES (7,3);