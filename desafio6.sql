CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MIN(p.preço) ,2) AS 'faturamento_minimo',
FORMAT(MAX(p.preço), 2) AS 'faturamento_maximo',
FORMAT(ROUND(AVG(p.preço), 2), 2) AS 'faturamento_medio',
FORMAT(SUM(p.preço), 2) AS 'faturamento_total'
FROM usuarios AS u
INNER JOIN planos as p
ON u.plano_id = p.id;
