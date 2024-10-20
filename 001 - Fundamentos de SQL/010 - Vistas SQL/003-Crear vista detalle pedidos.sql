CREATE VIEW detalle_pedidos AS
SELECT
pedidos.Identificador AS 'Número del pedido',
pedidos.fecha AS 'Fecha del pedido',
clientes.nombre AS 'Nombre del cliente',
productos.nombre AS 'Producto',
productos.precio AS 'Precio',
lineasdepedido.cantidad AS 'Cantidad',
productos.precio*lineasdepedido.cantidad AS'Subtotal'
FROM pedidos
LEFT JOIN clientes
ON pedidos.clientes_nombre = clientes.Identificador
LEFT JOIN lineasdepedido
ON lineasdepedido.pedidos_fecha = pedidos.Identificador
LEFT JOIN productos
ON lineasdepedido.productos_nombre = productos.Identificador;