CREATE VIEW historico_reproducao_usuarios AS
SELECT 
(SELECT 
nome
FROM
usuarios AS u
WHERE
u.id = ho.usuario_id) AS usuario,
(SELECT 
nome
FROM
musicas AS m
WHERE
m.id = ho.musica_id) AS nome
FROM
historico_ouvidas AS ho
ORDER BY `usuario` , `nome`;
