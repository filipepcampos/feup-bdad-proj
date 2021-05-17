-- Mostrar as cinco ofertas de emprego com melhor salário

.mode columns
.headers on
.nullvalue NULL


SELECT * FROM OfertaEmprego
	ORDER BY salario DESC
	LIMIT 5;

