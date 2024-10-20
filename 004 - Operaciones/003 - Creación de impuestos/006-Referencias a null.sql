UPDATE pedidos SET impuestos_nombres = NULL
WHERE impuestos_nombres NOT IN (SELECT Identificador FROM impuestos);