DELIMITER //

CREATE PROCEDURE LineaPedidoParametro(IN idproducto INT)
BEGIN
    START TRANSACTION;

    SELECT existencias INTO @existencias FROM productos WHERE identificador = idproducto;

    IF @existencias < 1 THEN
        ROLLBACK;
    ELSE
        INSERT INTO lineasdepedido VALUES (NULL, '233302', idproducto, '1', '');

        UPDATE productos SET existencias = `existencias` -1 WHERE `identificador` = idproducto;

        COMMIT;
    END IF;
END //
DELIMITER ;
