DELIMITER //

CREATE TRIGGER eliminar_pedido
AFTER DELETE ON pedidos
FOR EACH ROW
BEGIN
	INSERT INTO registros VALUES(NULL,'DELETE',UNIX_TIMESTAMP(),'pedidos',OLD.Identificador,USER());
END;

//
DELIMITER ;