.mode columns
.headers on
.nullvalue NULL

-- [Descrição]
-- Mostrar lista de Empresas ordenadas pela sua procura (Número total de candidaturas a OfertasEmprego criadas por essa empresa) 
-- e o rating médio dos jogadores que se candidataram

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

DROP VIEW IF EXISTS empresaInformacaoCandidaturas;
CREATE VIEW empresaInformacaoCandidaturas AS
SELECT idEmpresa, count(idJogador) as numJogadoresUnicos, avg(rating) as ratingMedio
FROM jogadorView JOIN (
    SELECT idEmpresa, idJogador
    FROM
        Empresa 
        LEFT JOIN OfertaEmprego ON(idEmpresa=Empresa.id)
        LEFT JOIN Candidatura ON(Candidatura.idOferta=OfertaEmprego.id)
    GROUP BY idEmpresa, idJogador
) ON(jogadorView.id = idJogador)
GROUP BY idEmpresa;


SELECT Empresa.id as Empresa, username, website, count(OfertaEmprego.idEmpresa) as numCandidaturas, 
    ifnull(numJogadoresUnicos,0) as numJogadoresUnicos, ifnull(ratingMedio,0.0) as ratingMedio
FROM
    Utilizador
    JOIN Empresa On (Utilizador.id = Empresa.id)
    LEFT JOIN OfertaEmprego
	    ON (Empresa.id = OfertaEmprego.idEmpresa)
    LEFT JOIN Candidatura
        ON (OfertaEmprego.id = idOferta)
    LEFT JOIN empresaInformacaoCandidaturas
        ON (Empresa.id = empresaInformacaoCandidaturas.idEmpresa)
GROUP BY Empresa.id
ORDER BY numCandidaturas DESC;