-- Mostrar lista de Empresas ordenadas pela sua procura (Número total de candidaturas a OfertasEmprego criadas por essa empresa)

.mode columns
.headers on
.nullvalue NULL


SELECT Empresa.id as Empresa, website, count(OfertaEmprego.idEmpresa) as numCandidaturas
FROM Empresa
	JOIN OfertaEmprego
		ON (Empresa.id = idEmpresa)
	JOIN Candidatura
		ON (OfertaEmprego.id = idOferta)
    GROUP BY Empresa.id
	ORDER BY numCandidaturas DESC;

-- TODO : THIS IS NOT WORKING