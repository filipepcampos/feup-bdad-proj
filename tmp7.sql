.mode columns
.headers on
.nullvalue NULL

-- Mostrar numero de ofertas para cada (pais, empresa)

SELECT localPais as Pais, nome, count(OfertaEmprego.id) as numOfertas 
FROM Localizacao
    JOIN OfertaEmprego 
        ON (localPais=pais AND localCidade=cidade AND localEndereco=endereco)
    JOIN Utilizador
        ON (idEmpresa = Utilizador.id)
GROUP BY Pais, nome;
