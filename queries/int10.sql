.mode columns
.headers on
.nullvalue NULL

-- [Descrição]
-- Uma das formas de saber os usuários mais ativos e que mais contribuem com a comunidade é filtrar --
-- os mesmos pelos seus pontos de contribuição e mesmo saber a quantidade de contribuições de cada um--
-- Mostra o username, os pontos de contribuição e o número de contribuições--
-- Ordenado pelos pontos de contribuição--

SELECT  username, pontosContribuicao, COUNT(idOrganizador) AS nContribuicoes
FROM Organizador as A
    INNER JOIN Contribuicao AS B
    INNER JOIN Utilizador AS C
        ON a.id = c.id
            AND b.idOrganizador = c.id
WHERE a.pontosContribuicao >= 0
GROUP BY username 
ORDER BY a.pontosContribuicao DESC;