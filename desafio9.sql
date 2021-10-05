DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN inputName VARCHAR(150))
BEGIN
SELECT 
a.nome AS artista, al.nome AS album
FROM
artistas AS a
INNER JOIN
albuns AS al ON a.id = al.artista_id
WHERE a.nome LIKE CONCAT('%', inputName, '%');
END $$

DELIMITER ;
