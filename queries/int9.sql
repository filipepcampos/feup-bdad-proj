.mode columns
.headers on
.nullvalue NULL

-- [Descrição]
-- Pretendemos incentivar jogadores da FEUP (email @fe.up.pt) pouco ativos a envolverem-se mais na comunidade,
-- tendo no entanto atenção para não selecionar contas inativas desde o início de 2020.
-- Para isto precisamos de obter todos os jogadores com email @fe.up.pt que não são contribuidores, 
-- não apresentaram nenhuma candidatura e que nunca participaram numa competição e
-- cuja última data de login seja mais recente que 1 de janeiro 2020

SELECT Utilizador.id, username, nome, email, datetime(ultimoLogin, 'unixepoch') as ultimoLogin 
FROM Utilizador
    LEFT JOIN
        (
            SELECT id FROM Jogador
            EXCEPT
            SELECT id FROM Organizador
            WHERE id NOT IN (
                SELECT idJogador FROM Candidatura
                UNION
                SELECT idJogador FROM Participacao
            )
        ) AS T
    ON Utilizador.id = T.id
WHERE email LIKE "%@fe.up.pt"
    AND ultimoLogin - strftime('%s', '2020-01-01 00:00:00') > 0;