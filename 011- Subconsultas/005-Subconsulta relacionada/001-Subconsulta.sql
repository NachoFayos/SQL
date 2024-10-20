SELECT
c.nombre,
c.email,
c.telefono
FROM clientes c
WHERE EXISTS(
    SELECT 1 FROM pedidos WHERE pedidos.clientes_id = c.identificador);