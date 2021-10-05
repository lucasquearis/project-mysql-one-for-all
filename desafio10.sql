DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(inputId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT
COUNT(*)
FROM
historico_ouvidas
WHERE usuario_id = inputId INTO result;
RETURN result;

END $$

DELIMITER ;
