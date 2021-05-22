-- Mostrar as cinco ofertas de emprego com melhor salário

.mode columns
.headers on
.nullvalue NULL


SELECT * FROM OfertaEmprego
	ORDER BY salario DESC
	LIMIT 5;

(Tou a escrever sem ser em comentário para isto crashar ao tentar correr e ser mais difícil de não notar),
Acho que a query está facil demais
