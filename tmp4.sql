-- Selecionar número de problemas resolvidos por cada jogador (via competição, desafio ou aula)


-- [COUNT PROBLEMS FROM Competicao]
--SELECT idJogador, count(DISTINCT idProblema) as numProblemasCompeticao
--FROM Competicao 
--    JOIN (SELECT idJogador, idCompeticao as id FROM Participacao) USING(id)
--    JOIN (SELECT idProblema, idCompeticao as id FROM ProblemaCompeticao) USING(id)
--GROUP BY idJogador;


-- [ Join both ids as one from Desafio]

--(SELECT * FROM Utilizador JOIN (SELECT idDesafiado as id FROM Desafio) USING(id)
--UNION
--SELECT * FROM Utilizador JOIN (SELECT idDesafiador as id FROM Desafio) USING(id))


SELECT idJogador, count(DISTINCT idProblema) as numProblemasDesafio
FROM ProblemaDesafio 
    JOIN
        (SELECT id, idDesafiado as idJogador FROM Desafio
        UNION
        SELECT id, idDesafiador as idJogador FROM Desafio)
    WHERE idDesafio = id
GROUP BY idJogador;