.mode columns
.headers on
.nullvalue NULL

-- Para cada curso mostrar o número de estudantes, a nota média, o tempo médio que demora a completar (?),
-- número de aulas e número de problemas / problemas com solução
--
--
-- [YHDASYHBUJASDGGYHBUASDJYHSDAYHASDDJIKSAHNDASUKIDHASHUIDASUDHSNADIAS]

SELECT id, titulo, numAulas, numEstudantes, notaMedia
FROM Curso
    JOIN (
        SELECT count(id) as numAulas, idCurso as id 
            FROM Aula GROUP BY idCurso
    ) USING (id)
    JOIN (
        SELECT count(idJogador) as numEstudantes, avg(nota) as notaMedia, idCurso as id
            FROM Informacao GROUP BY idCurso
    ) USING (id);


(Tou a escrever sem ser em comentário para isto crashar ao tentar correr e ser mais difícil de não notar),
Ainda não tem o número de problemas / problemas com solução