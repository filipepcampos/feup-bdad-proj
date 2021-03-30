--------------------------------------------------
-- This program will count the number of lines  --
-- that start with 'INSERT'                     --
--  If line shouldn't output an error simply    --
-- add a single whitespace before it's start    --
--------------------------------------------------

---------- Localização -------
--=LocalizacaoPK
 INSERT INTO Localizacao(id,pais,cidade,endereco)
    VALUES (0, 'a0', 'a1', 'a2');
INSERT INTO Localizacao(id,pais,cidade,endereco)
    VALUES (0, 'a1', 'a2', 'a3');
--=paisNotNull
INSERT INTO Localizacao(id,pais,cidade,endereco)
    VALUES (1, NULL, 'b0', 'b1');
--=cidadeNotNull
INSERT INTO Localizacao(id,pais,cidade,endereco)
    VALUES (2, 'c0', NULL, 'c1');
--=enderecoNotNull
INSERT INTO Localizacao(id,pais,cidade,endereco)
    VALUES (3, 'd0', 'd1', NULL);
--=LocalizacaoUnique
 INSERT INTO Localizacao(id,pais,cidade,endereco)
    VALUES (4, 'e0', 'e1', 'e2');
INSERT INTO Localizacao(id,pais,cidade,endereco)
    VALUES (5, 'e0', 'e1', 'e2');

--------- OfertaEmprego -------
--=dataCriacaoFormat
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
    VALUES (0, 'pos', 'info', 1000.0, '2019/08/01', 2, 1);
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
    VALUES (1, 'pos', 'info', 1000.0, '2019--05', 2, 1);
--=dataCriacaoValue
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
    VALUES (1, 'pos', 'info', 1000.0, '2019-05-75', 2, 1);
--=dataCriacaoNotFuture
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
    VALUES (2, 'pos', 'info', 1000.0, '2025-01-05', 2, 1);
--=salarioPositivo
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
    VALUES (2, 'pos', 'info', -500.0, '2025-01-05', 2, 1);
--=idEmpresaNotNull
INSERT INTO OfertaEmprego(id, posicao, informacao, salario, dataCriacao, idEmpresa, localizacaoId) 
    VALUES (2, 'pos', 'info', 500.0, '2025-01-05', NULL, 1);
