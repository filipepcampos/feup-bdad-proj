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
        JOIN Participacao ON (id=Participacao.idCompeticao)
        JOIN ProblemaCompeticao ON (id=ProblemaCompeticao.idCompeticao)
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
        JOIN Informacao ON Jogador.id = idJogador
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
            LEFT JOIN numProbCompeticao ON Jogador.id = numProbCompeticao.idJogador
            LEFT JOIN numProbDesafio ON Jogador.id = numProbDesafio.idJogador
            LEFT JOIN numProbAula ON Jogador.id = numProbAula.idJogador
    ) USING (id)
    ORDER BY numProblemasTotal DESC;

