ALTER TABLE `pedidos` ADD `impuestos_nombres` INT(255) NOT NULL AFTER `clientes_nombre`;

ALTER TABLE pedidos MODIFY impuestos_nombres INT(10);