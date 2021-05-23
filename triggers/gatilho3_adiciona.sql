PRAGMA foreign_keys = ON;

CREATE TRIGGER verifica_data_candidatura
   BEFORE INSERT ON Candidatura
FOR EACH ROW
WHEN strftime('%Y-%m-%d',NEW.dataCandidatura,'unixepoch') < (
    SELECT strftime('%Y-%m-%d',dataCriacao,'unixepoch')
    FROM OfertaEmprego WHERE id = NEW.idOferta
)
BEGIN
    SELECT RAISE(ABORT, 'Candidatura não pode ocorrer antes de uma oferta');
END;