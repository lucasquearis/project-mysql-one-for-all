CREATE VIEW cancoes_premium AS
SELECT 
m.nome AS nome, COUNT(*) AS reproducoes
FROM
usuarios AS u
INNER JOIN
historico_ouvidas AS ho ON u.id = ho.usuario_id
INNER JOIN
musicas AS m ON m.id = ho.musica_id
WHERE
plano_id IN (2 , 3)
GROUP BY m.nome
ORDER BY `nome` ASC;