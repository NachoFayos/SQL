DELIMITER //

CREATE EVENT IF NOT EXISTS ActualizarProvinciaEvento
ON SCHEDULE EVERY 1 MINUTE 
DO
	CALL ActualizarCodigoProvincia
    
DELIMITER ;