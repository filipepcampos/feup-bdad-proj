PRAGMA foreign_keys = ON;

INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco)
     VALUES (7, 'Front-end developer', 'We need a new page on our website', 1200.0, strftime('%s', '2020-11-01'), 30, 'Germany', 'Berlin', 'Straße 1');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco)
     VALUES (8, 'Software Developer', 'Working here is great!', 5000.0, strftime('%s','2020-11-25'), 31, 'Germany', 'Berlin', 'Straße 1');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco)
     VALUES (9, 'Software Developer', 'Contact us', 14000, strftime('%s', '2020-02-09'), 34, 'Portugal', 'Lisboa', 'Rua 1');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco)
     VALUES (10, 'Back-end Developer', 'Contact us', 7000, strftime('%s', '2020-02-09'), 31,'United Kingdom', 'Birmingham', 'Street 2');
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localPais, localCidade, localEndereco)
     VALUES (11, 'IOS app developer', 'We need a custom IOS app', 8000, strftime('%s', '2020-02-09'), 35, 'Portugal', 'Porto', 'Rua 3');


SELECT * from Candidatura
WHERE idOferta IN (7, 8, 9, 10, 11);

--Não deve ser inserido--
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (7, 0, strftime('%s',"2019-02-13"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (11, 3, strftime('%s',"2020-02-08"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (8, 3, strftime('%s',"2020-11-08"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (9, 1, strftime('%s',"2019-11-08"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (8, 7, strftime('%s',"2019-07-14"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (8, 8, strftime('%s',"2019-10-08"));

SELECT * from Candidatura
WHERE idOferta IN (7, 8, 9, 10, 11);

--Deve ser inserido--
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (7, 0, strftime('%s',"2020-12-13"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (7, 3, strftime('%s',"2021-01-01"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (9, 1, strftime('%s',"2020-05-13"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (9, 7, strftime('%s',"2020-04-11"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (9, 5, strftime('%s',"2020-03-07"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (10, 4, strftime('%s',"2021-01-13"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (10, 7, strftime('%s',"2021-02-15"));
INSERT INTO Candidatura(idOferta, idJogador, dataCandidatura) VALUES (11, 9, strftime('%s',"2020-02-09"));

SELECT * from Candidatura
WHERE idOferta IN (7, 8, 9, 10, 11);

-- Limpar os dados inseridos 
DELETE FROM Candidatura
WHERE idOferta IN (7, 8, 9, 10, 11);
DELETE FROM OfertaEmprego
WHERE id IN (7, 8, 9, 10, 11);