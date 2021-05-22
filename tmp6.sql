-- Qual o username e nota média de todos os jogadores que concluíram todos os cursos disponíveis
-- Adicionalmente, também se quer saber qual dos cursos foi mais recentemente terminado por cada um desses jogadores


--SELECT id, username, notaMedia
--FROM Utilizador
--    JOIN (
--        SELECT idJogador, count(DISTINCT idCurso) as numCursosCompletados, avg(nota) as notaMedia
--        FROM Informacao
--        WHERE nota >= 9.5
--        GROUP BY idJogador
--    ) ON (id=idJogador)
--WHERE numCursosCompletados = (SELECT count(id) FROM Curso);


(Tou a escrever sem ser em comentário para isto crashar ao tentar correr e ser mais difícil de não notar),
Ainda falta obter o curso mais recentemente terminado por cada jogador