PRAGMA foreign_keys = ON;

CREATE TRIGGER updateDificuldadeMedia
AFTER INSERT ON ProblemaCompeticao
BEGIN
    UPDATE Competicao
    SET dificuldadeMedia = (
        SELECT
        (sum(dificuldade) / count(id)) as dif
        FROM Problema 
        WHERE Problema.id IN (
            SELECT idProblema as id 
            FROM ProblemaCompeticao 
            WHERE idCompeticao = NEW.idCompeticao
        )
    )
    WHERE (Competicao.id = NEW.idCompeticao);
END;
