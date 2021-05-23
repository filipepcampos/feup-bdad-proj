PRAGMA foreign_keys = ON;

CREATE TRIGGER insertOnParticipacao
    BEFORE INSERT ON Participacao
WHEN NEW.idJogador IN (
    SELECT idOrganizador 
    FROM Contribuicao WHERE idCompeticao = NEW.idCompeticao
)
BEGIN
    SELECT RAISE(ABORT, 'Jogador não se pode inscrever numa competição organizada por si próprio');
END;

CREATE TRIGGER insertOnContribuicao
    BEFORE INSERT ON Contribuicao
WHEN NEW.idOrganizador IN (
    SELECT idJogador
    FROM Participacao WHERE idCompeticao = NEW.idCompeticao
)
BEGIN
    SELECT RAISE(ABORT, 'Jogador não deve organizar uma competição em que irá participar');
END;


-- ==============================================================================================
-- ==============================================================================================
-- ================== [Trigger considerado para avaliação] ======================================
-- ==============================================================================================
-- ==============================================================================================

CREATE TRIGGER update_pontos_organizador
    BEFORE INSERT ON Contribuicao
WHEN NEW.idOrganizador NOT IN (
    SELECT idJogador
    FROM Participacao WHERE idCompeticao = NEW.idCompeticao
)
BEGIN
    UPDATE Organizador SET pontosContribuicao = pontosContribuicao+10 WHERE id = NEW.idOrganizador;
END;
