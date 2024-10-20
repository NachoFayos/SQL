SELECT
clientes.nombre,
clientes.email,
clientes.telefono
FROM
clientes
WHERE clientes.identificador IN (
    SELECT DISTINCT pedidos.clientes_id FROM pedidos);