CREATE VIEW totales_pedidos AS
SELECT
pedidos.Identificador AS 'Número del pedido',
pedidos.fecha AS 'Fecha del pedido',
clientes.nombre AS 'Nombre del cliente',
SUM(productos.precio*lineasdepedido.cantidad) AS'SubTotal',
impuestos.nombre AS 'Descripción impuesto',
ROUND(SUM(productos.precio*lineasdepedido.cantidad)*(impuestos.tipoimposotivo/100),2) AS 'Impuesto',
ROUND(SUM(productos.precio*lineasdepedido.cantidad)+SUM(productos.precio*lineasdepedido.cantidad)*(impuestos.tipoimposotivo/100),2) AS 'Total'

FROM pedidos
LEFT JOIN clientes
ON pedidos.clientes_nombre = clientes.Identificador
LEFT JOIN lineasdepedido
ON lineasdepedido.pedidos_fecha = pedidos.Identificador
LEFT JOIN productos
ON lineasdepedido.productos_nombre = productos.Identificador
LEFT JOIN impuestos
ON pedidos.impuestos_nombres = impuestos.identificador

GROUP BY clientes.identificador;