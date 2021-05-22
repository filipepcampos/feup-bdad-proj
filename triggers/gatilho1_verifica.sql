PRAGMA foreign_keys = ON;

--Insere a participação de jogadores--
--Jogadores que estão a participar de uma competição não podem contribuir para a mesma--
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (5, 6);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (2, 6);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (0, 6);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (3, 2);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (4, 2);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (2, 7);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (4, 7);

---Contribuição de organizadores--
---Deverá aumentar pontuação de Organizador---
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (8, 6);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (8, 5);
INSERT INTO Contribuicao(idOrganizador, idCompeticao) VALUES (6, 2);