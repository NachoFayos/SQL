DELIMITER //

CREATE TRIGGER insertar_pedido
AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN
	INSERT INTO registros VALUES(NULL,'INSERT',NOW(),'pedidos',NEW.Identificador);
END;

//
DELIMITER ;

//Un trigger es una acción realizada a consecuencia de otra acción//