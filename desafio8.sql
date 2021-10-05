DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
SET SQL_SAFE_UPDATES = 0;
DELETE FROM historico_ouvidas 
WHERE
usuario_id = old.id;
DELETE FROM usuarios_artistas 
WHERE
usuario_id = old.id;
SET SQL_SAFE_UPDATES = 1;
END $$
DELIMITER ;
