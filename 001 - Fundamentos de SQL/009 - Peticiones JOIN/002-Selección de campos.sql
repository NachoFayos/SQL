SELECT
pedidos.Identificador AS 'Número del pedido',
pedidos.fecha AS 'Fecha del pedido',
clientes.nombre AS 'Nombre del cliente'
FROM pedidos
LEFT JOIN clientes
ON pedidos.clientes_nombre = clientes.Identificador;

//Selecciono solo los campos que quiero que aparezcan.//