-- Para cada curso mostrar o número de estudantes, a nota média, o tempo médio que demora a completar (?),
-- número de aulas e número de problemas / problemas com solução

-- [NOTA]
-- Ainda não tem tempo médio que demora a completar (Parece ser complicado pois as contas de datas tem de ser feitas 'à mão')
-- Tmb ainda não inclui o número de problemas
--
--
--
-- [YHDASYHBUJASDGGYHBUASDJYHSDAYHASDDJIKSAHNDASUKIDHASHUIDASUDHSNADIAS]

SELECT id, titulo, numAulas, numEstudantes, notaMedia
FROM Curso 
    JOIN (SELECT count(id) as numAulas, idCurso as id 
            FROM Aula GROUP BY idCurso)
        USING (id)
    JOIN (SELECT count(idJogador) as numEstudantes, avg(nota) as notaMedia, idCurso as id
            FROM Informacao GROUP BY idCurso)
        USING (id);