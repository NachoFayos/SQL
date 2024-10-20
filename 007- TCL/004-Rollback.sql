START TRANSACTION;

SELECT existencias INTO @existencias FROM productos WHERE identificador = 1;

IF @existencias < 1 THEN
	ROLLBACK;
ELSE
 	INSERT INTO lineasdepedido VALUES (NULL, '233302', '1', '1', '');
    
	UPDATE productos SET existencias = `existencias` -1 WHERE `identificador` = 1;

	COMMIT;
END IF;
