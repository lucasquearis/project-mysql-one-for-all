CREATE VIEW top_2_hits_do_momento AS
SELECT 
(SELECT 
nome
FROM
musicas AS m
WHERE
m.id = ho.musica_id) AS cancao,
COUNT(*) AS reproducoes
FROM
historico_ouvidas AS ho
GROUP BY cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;
