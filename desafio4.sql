CREATE VIEW top_3_artistas AS

SELECT 
(SELECT 
nome
FROM
artistas AS a
WHERE
a.id = ua.artista_id) AS artista,
COUNT(*) AS seguidores
FROM
usuarios_artistas AS ua
GROUP BY artista
ORDER BY seguidores DESC , artista ASC
LIMIT 3;
