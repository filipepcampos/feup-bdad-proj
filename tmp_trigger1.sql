DROP TRIGGER IF EXISTS insertOnParticipacao;
CREATE TRIGGER insertOnParticipacao
    BEFORE INSERT ON Participacao
WHEN NEW.idJogador IN (
    SELECT idOrganizador 
    FROM Contribuicao WHERE idCompeticao = NEW.idCompeticao
)
BEGIN
    SELECT RAISE(ABORT, 'Jogador não se pode inscrever numa competição organizada por si próprio');
END;

DROP TRIGGER IF EXISTS insertOnContribuicao;
CREATE TRIGGER insertOnContribuicao
    BEFORE INSERT ON Contribuicao
WHEN NEW.idJogador IN (
    SELECT idJogador
    FROM Participacao WHERE idCompeticao = NEW.idCompeticao
)
BEGIN
    SELECT RAISE(ABORT, 'Jogador não organizar uma competição onde irá participar');
END;