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

-- ==============================================================================================
-- =========== [Trigger considerado para avaliação: insertOnContribuição] =======================
-- ==============================================================================================

CREATE TRIGGER insertOnContribuicao
    BEFORE INSERT ON Contribuicao
BEGIN
    SELECT CASE WHEN 
        NEW.idOrganizador IN (
                    SELECT idJogador
                    FROM Participacao WHERE idCompeticao = NEW.idCompeticao
                )
        THEN RAISE(ABORT, 'Jogador não deve organizar uma competição em que irá participar')
    END;
    UPDATE Organizador SET pontosContribuicao = pontosContribuicao+10 WHERE id = NEW.idOrganizador;
END;
