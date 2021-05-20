-- Mostrar lista de Empresas ordenadas pela sua procura (Número total de candidaturas a OfertasEmprego criadas por essa empresa) e o rating médio dos jogadores que se candidataram

.mode columns
.headers on
.nullvalue NULL

DROP VIEW if EXISTS jogadorView;
CREATE VIEW jogadorView AS
SELECT * FROM
(
    SELECT id, T.numCompeticoes, T.rating FROM 
            Jogador JOIN (
                SELECT idJogador as id, count(idCompeticao) as numCompeticoes, sum(mudancaRating) as rating
                FROM Participacao GROUP BY idJogador) as T
            USING (id)
    UNION
    SELECT id, 0, 0 FROM Jogador WHERE id not in (SELECT idJogador FROM Participacao)
);


SELECT Empresa.id as Empresa, website, count(OfertaEmprego.idEmpresa) as numCandidaturas, avg(rating) as ratingMedio
FROM Empresa
    LEFT JOIN OfertaEmprego
	ON (Empresa.id = idEmpresa)
    LEFT JOIN Candidatura
        ON (OfertaEmprego.id = idOferta)
    LEFT JOIN jogadorView
	ON (jogadorView.id = idJogador)
GROUP BY Empresa.id
ORDER BY numCandidaturas DESC;


	