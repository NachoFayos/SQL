DROP TRIGGER IF EXISTS `insertar_pedido`;

DELIMITER //

CREATE TRIGGER insertar_pedido
AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN
	INSERT INTO registros VALUES(NULL,'INSERT',UNIX_TIMESTAMP(),'pedidos',NEW.Identificador,USER());
END;

//
DELIMITER ;

//Un trigger es una acción realizada a consecuencia de otra acción//