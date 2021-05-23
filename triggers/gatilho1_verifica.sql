PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (8, "Apple Hacker Cup", "Ipsum Lorem", strftime('%s',"2021-05-07 15:00:00"), strftime('%s',"2021-05-07 18:00:00"), "$200000");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (9, "Unrated Competition 3", "Join us", strftime('%s',"2021-03-27 07:00:00"), strftime('%s',"2021-03-27 09:00:00"), NULL);
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (10, "Twitter Hacker Cup", "Ipsum Lorem", strftime('%s',"2021-05-07 15:00:00"), strftime('%s',"2021-05-07 18:00:00"), "$1000");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (11, "Unrated Competition 9", "Join us", strftime('%s',"2021-03-27 07:00:00"), strftime('%s',"2021-03-27 09:00:00"), '$4500');


INSERT INTO Organizador(id, pontosContribuicao) VALUES (2, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (3, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (4, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (5, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (10, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (11, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (12, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (13, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (15, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (16, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (18, 0);
INSERT INTO Organizador(id, pontosContribuicao) VALUES (19, 0);

--Insere a contribuição para testar a inserção da participação de jogadores--
--insertOnParticipacao--
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (7, 8);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (8, 9);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (9, 8);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (10, 9);
--Jogadores que estão a organizar uma competição não podem participar da mesma--
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (7, 8, strftime('%s',"2021-03-25 21:30:23"), 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (8, 9, strftime('%s',"2021-03-25 21:30:23"), 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (9, 8, strftime('%s',"2021-03-25 21:30:23"), 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (10, 9, strftime('%s',"2021-03-25 21:30:23"), 3, 30);


-- ==============================================================================================
-- ==============================================================================================
-- ================== [Parte relevante ao trigger considerado para avaliação] ===================
-- ==============================================================================================
-- ==============================================================================================

.print "\n\n\n-------- SECÇÃO RELEVANTE PARA AVALIAÇÃO ---------"
.print "\n\n======== Verificação do RAISE ========="

SELECT * FROM Contribuicao;

--Insere a participação de jogadores--
--Jogadores que estão a participar de uma competição não podem contribuir para a mesma--
--insertOnContribuicao--
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (1, 8, strftime('%s',"2021-03-25 21:30:23"), 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (2, 9, strftime('%s',"2021-03-25 21:30:23"), 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (3, 8, strftime('%s',"2021-03-25 21:30:23"), 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (4, 9, strftime('%s',"2021-03-25 21:30:23"), 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (5, 8, strftime('%s',"2021-03-25 21:30:23"), 3, 30);
INSERT INTO Participacao(idJogador, idCompeticao, dataInscricao, posicao, mudancaRating) VALUES (6, 8, strftime('%s',"2021-03-25 21:30:23"), 3, 30);


INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (1, 8);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (2, 9);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (3, 8);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (4, 9);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (5, 8);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 8);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (13, 8);

.print "\nResultado expectado, 6 erros de RAISE e 1 adição na tabela Contribuição com valor (idOrganizador:13,idCompeticao:8)"

SELECT * FROM Contribuicao;

--Contribuição de organizadores--
--Deverá aumentar pontuação de Organizador--
.print "\n\n======== Verificação do aumento de pontos ========="
SELECT * FROM Contribuicao
WHERE idCompeticao IN (8, 9, 10, 11);

SELECT * FROM Organizador
WHERE id IN (11,12,13,14,15,16,17,18,19);

INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (11, 8);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (11, 9);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (15, 11);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (12, 9);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (13, 9);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (14, 10);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (15, 8);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (13, 10);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (14, 11);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (16, 11);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (17, 9);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (18, 11);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (19, 11);

.print "\nResultado expectado: Novas adições na tabela Contribuição que causam o aumento de pontos de contribuição"

SELECT * FROM Contribuicao
WHERE idCompeticao IN (8, 9, 10, 11);

SELECT * FROM Organizador
WHERE id IN (11,12,13,14,15,16,17,18,19);

ROLLBACK;