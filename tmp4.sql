-- Selecionar número de problemas resolvidos por cada jogador (via competição, desafio ou aula). Nota: Problemas com solução de uma aula não contam para este valor!

SELECT id
    ifnull(numProblemasCompeticao, 0) as numProblemasCompeticao,
    ifnull(numProblemasDesafio, 0) as numProblemasDesafio,
    ifnull(numProblemasEmAula, 0) as numProblemasEmAula
FROM
    Jogador
    LEFT JOIN
    (
        -- Contar problemas de competições
        SELECT idJogador, count(DISTINCT idProblema) as numProblemasCompeticao
        FROM Competicao 
            JOIN (SELECT idJogador, idCompeticao as id FROM Participacao) USING(id)
            JOIN (SELECT idProblema, idCompeticao as id FROM ProblemaCompeticao) USING(id)
        GROUP BY idJogador
    ) AS T1 ON Jogador.id = T1.idJogador

    LEFT JOIN
    (
        -- Contar problemas de desafios
        SELECT idJogador, count(DISTINCT idProblema) as numProblemasDesafio
        FROM ProblemaDesafio 
            JOIN
                (SELECT id, idDesafiado as idJogador FROM Desafio
                UNION
                SELECT id, idDesafiador as idJogador FROM Desafio)
            WHERE idDesafio = id
        GROUP BY idJogador
    ) AS T2 ON Jogador.id = T2.idJogador

    LEFT JOIN
    (
        -- Contar problemas provenientes de aulas (Problemas com solução não contam)
        SELECT idJogador, sum(numProblemasCurso) as numProblemasEmAula
        FROM Jogador 
            JOIN
                (SELECT idJogador, idCurso FROM Informacao) 
            ON Jogador.id = idJogador
            JOIN (
                SELECT idCurso, count(DISTINCT idProblema) as numProblemasCurso
                        FROM Aula 
                    JOIN ProblemaAula ON Aula.id = idAula 
                GROUP BY idCurso
            ) USING (idCurso)
        GROUP BY idJogador
    ) AS T3 ON Jogador.id = T3.idJogador
;

