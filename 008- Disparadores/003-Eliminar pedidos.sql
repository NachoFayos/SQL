DELIMITER //

CREATE TRIGGER eliminar_pedido
AFTER DELETE ON pedidos
FOR EACH ROW
BEGIN
	INSERT INTO registros VALUES(NULL,'DELETE',NOW(),'pedidos',OLD.Identificador);
END;

//
DELIMITER ;