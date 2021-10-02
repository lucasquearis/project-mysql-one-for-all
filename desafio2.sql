CREATE VIEW estatisticas_musicais AS SELECT 
COUNT(id) AS cancoes,
(SELECT 
COUNT(*)
FROM
albuns) AS albuns,
(SELECT 
COUNT(*)
FROM
artistas) AS artistas
FROM
musicas;
