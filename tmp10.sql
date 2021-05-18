-- Mostrar mensagens num formato facil de ler, isto é, mostrar o username dos utilizadores em vez do id e mostrar a data formatada em vez do valor unixepoch

SELECT usernameRemetente, usernameDestinatario, texto, datetime(Mensagem.datetime, 'unixepoch') as data FROM Mensagem
    JOIN (SELECT id, username as usernameRemetente FROM Utilizador) AS T1 
        ON (T1.id = Mensagem.idUtilizadorRemetente)
    JOIN (SELECT id, username as usernameDestinatario FROM Utilizador) AS T2 
        ON (T2.id = Mensagem.idUtilizadorDestinatario);