CREATE VIEW perfil_artistas AS
SELECT 
(SELECT 
nome
FROM
artistas AS a
WHERE
a.id = ua.artista_id) AS artista,
al.nome AS album,
COUNT(ua.usuario_id) AS seguidores
FROM
usuarios_artistas AS ua
INNER JOIN
albuns AS al ON al.artista_id = ua.artista_id
GROUP BY album , artista
ORDER BY seguidores DESC , artista ASC , album ASC;
