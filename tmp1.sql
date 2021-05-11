--   Mostrar os três melhores Jogadores (baseado no seu rating) que participaram 
-- em pelo menos 5 competições.


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

SELECT * FROM jogadorView 
    WHERE numCompeticoes >= 5
    ORDER BY rating DESC
    LIMIT 3;