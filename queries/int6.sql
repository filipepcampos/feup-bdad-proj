.mode columns
.headers on
.nullvalue NULL

-- [Descrição]
-- Selecionar número de problemas resolvidos por cada jogador (via competição, desafio ou aula). 
-- Nota: Problemas com solução de uma aula não contam para este valor!

DROP VIEW IF EXISTS numProbCompeticao;
CREATE VIEW numProbCompeticao
AS
    SELECT idJogador, count(DISTINCT idProblema) as numProblemasCompeticao
    FROM Competicao 
        JOIN (SELECT idJogador, idCompeticao as id FROM Participacao) USING(id)
        JOIN (SELECT idProblema, idCompeticao as id FROM ProblemaCompeticao) USING(id)
    GROUP BY idJogador;

DROP VIEW IF EXISTS numProbDesafio;
CREATE VIEW numProbDesafio
AS
    SELECT idJogador, count(DISTINCT idProblema) as numProblemasDesafio
    FROM ProblemaDesafio 
        JOIN
            (SELECT id, idDesafiado as idJogador FROM Desafio
            UNION
            SELECT id, idDesafiador as idJogador FROM Desafio)
        WHERE idDesafio = id
    GROUP BY idJogador;

DROP VIEW IF EXISTS numProbAula;
CREATE VIEW numProbAula
AS
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
    GROUP BY idJogador;

SELECT id, username, (numProblemasCompeticao+numProblemasDesafio+numProblemasEmAula) as numProblemasTotal,
    numProblemasCompeticao, numProblemasDesafio, numProblemasEmAula
FROM
    Utilizador JOIN (
        SELECT id,
            ifnull(numProblemasCompeticao, 0) as numProblemasCompeticao,
            ifnull(numProblemasDesafio, 0) as numProblemasDesafio,
            ifnull(numProblemasEmAula, 0) as numProblemasEmAula
        FROM
            Jogador
            LEFT JOIN  (SELECT * FROM numProbCompeticao) AS T1 ON Jogador.id = T1.idJogador
            LEFT JOIN  (SELECT * FROM numProbDesafio) AS T2 ON Jogador.id = T2.idJogador
            LEFT JOIN  (SELECT * FROM numProbAula) AS T3 ON Jogador.id = T3.idJogador
    ) USING (id)
    ORDER BY numProblemasTotal DESC;

