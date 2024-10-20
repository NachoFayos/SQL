START TRANSACTION;

INSERT INTO lineasdepedido VALUES (NULL, '233302', '1', '1', '');
    
UPDATE productos SET existencias = `existencias` -1 WHERE `identificador` = 1;

COMMIT;
