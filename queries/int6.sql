.mode columns
.headers on
.nullvalue NULL

-- [Descrição]
-- Para cada curso mostrar o número de estudantes, a nota média
-- número de aulas e número de problemas / problemas com solução

SELECT id, titulo, ifnull(numAulas, 0) as numAulas, ifnull(numProblemas, 0) as numProblemas, ifnull(numEstudantes, 0) as numEstudantes, notaMedia
FROM Curso
    LEFT JOIN (
        SELECT idCurso as id, count(id) as numAulas, sum(numProblemas) as numProblemas
            FROM
                (
                    SELECT id, idCurso, count(idProblema)+count(idProblemaComSolucao) as numProblemas
                    FROM Aula 
                        LEFT JOIN ProblemaAula ON (id=ProblemaAula.idAula)
                        LEFT JOIN ProblemaComSolucaoAula ON (id=ProblemaComSolucaoAula.idAula)
                    GROUP BY id
                )
            GROUP BY idCurso
    ) USING (id)
    LEFT JOIN (
        SELECT count(idJogador) as numEstudantes, avg(nota) as notaMedia, idCurso as id
            FROM Informacao GROUP BY idCurso
    ) USING (id);
