-- Selecionar número de problemas resolvidos por cada jogador (via competição, desafio ou aula). Nota: Problemas com solução de uma aula não contam para este valor!

SELECT * FROM
(
    -- [COUNT PROBLEMS FROM Competicao]
    SELECT idJogador, count(DISTINCT idProblema) as numProblemasCompeticao
    FROM Competicao 
        JOIN (SELECT idJogador, idCompeticao as id FROM Participacao) USING(id)
        JOIN (SELECT idProblema, idCompeticao as id FROM ProblemaCompeticao) USING(id)
    GROUP BY idJogador
)
JOIN
(
    -- [ COUNT PROBLEMS FROM Desafio ]
    SELECT idJogador, count(DISTINCT idProblema) as numProblemasDesafio
    FROM ProblemaDesafio 
        JOIN
            (SELECT id, idDesafiado as idJogador FROM Desafio
            UNION
            SELECT id, idDesafiador as idJogador FROM Desafio)
        WHERE idDesafio = id
    GROUP BY idJogador
) USING(idJogador);


--SELECT idJogador, sum(numProblemasCurso) as numProblemasEmAula
--FROM Jogador 
    --JOIN
      --  (SELECT idJogador, idCurso FROM Informacao) 
       -- ON Jogador.id = idJogador
    --JOIN (
        --SELECT idCurso, count(DISTINCT idProblema) as numProblemasCurso
          --  FROM Aula 
           --     JOIN ProblemaAula ON Aula.id = idAula 
        --GROUP BY idCurso
    --) USING (idCurso)
--GROUP BY idJogador;