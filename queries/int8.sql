.mode columns
.headers on
.nullvalue NULL

-- [Descrição]
-- Para cada utilizador mostrar o seu id, username, nome, email, tipo de utilizador e ultima data de login
-- O tipo de utilizador é uma string "Empresa", "Organizador" ou "Jogador".
-- Como todos os Organizadores são Jogadores, a string "Organizador" tem prioridade.

SELECT Utilizador.id, username, nome, email, tipo, datetime(ultimoLogin, 'unixepoch') as ultimoLogin    
FROM 
    Utilizador
    JOIN(
        SELECT id, "Empresa" as tipo FROM Empresa
        UNION
        SELECT id, "Organizador" as tipo FROM Organizador
        UNION
        SELECT id, "Jogador" as tipo 
            FROM Jogador 
            WHERE NOT EXISTS (SELECT * FROM Organizador WHERE Organizador.id=Jogador.id)
    ) USING(id)
;

