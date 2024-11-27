DELIMITER $$

CREATE PROCEDURE RedefinirStatusMesa(IN mesa_numero INT)
BEGIN
    UPDATE Mesa
    SET status = 'Livre'
    WHERE numero = mesa_numero;
END$$

DELIMITER ;