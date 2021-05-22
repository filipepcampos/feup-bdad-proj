.mode columns
.headers on
.nullvalue NULL

-- [Descrição]
-- Qual o username e nota média de todos os jogadores que concluíram todos os cursos disponíveis
-- Adicionalmente, também se quer saber qual dos cursos foi mais recentemente terminado por cada um desses jogadores 
-- (Em caso de empate escolher um curso aleatório)

DROP VIEW IF EXISTS cursoMaisRecentePorJogador;
CREATE VIEW cursoMaisRecentePorJogador AS
SELECT idJogador, idCurso, titulo, nivel FROM Curso JOIN(
    SELECT idJogador, idCurso FROM Informacao
    GROUP BY idJogador
    HAVING dataFim = max(dataFim)
) ON (Curso.id = idCurso);

SELECT id, username, notaMedia, idCurso, titulo, nivel
FROM Utilizador
    JOIN (
        SELECT idJogador, count(DISTINCT idCurso) as numCursosCompletados, avg(nota) as notaMedia
        FROM Informacao
        WHERE nota >= 9.5
        GROUP BY idJogador
    ) ON (id=idJogador)
    JOIN (
        SELECT * from cursoMaisRecentePorJogador
    ) USING(idJogador)
WHERE numCursosCompletados = (SELECT count(id) FROM Curso);