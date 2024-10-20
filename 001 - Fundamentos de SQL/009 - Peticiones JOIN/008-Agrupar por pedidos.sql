SELECT
pedidos.Identificador AS 'Número del pedido',
pedidos.fecha AS 'Fecha del pedido',
clientes.nombre AS 'Nombre del cliente',
SUM(productos.precio*lineasdepedido.cantidad) AS'Total'
FROM pedidos
LEFT JOIN clientes
ON pedidos.clientes_nombre = clientes.Identificador
LEFT JOIN lineasdepedido
ON lineasdepedido.pedidos_fecha = pedidos.Identificador
LEFT JOIN productos
ON lineasdepedido.productos_nombre = productos.Identificador
GROUP BY clientes.identificador;