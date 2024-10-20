SELECT 
c.nombre,
c.email,
c.telefono
FROM 
(SELECT * FROM clientes WHERE clientes.pais = 'ES') AS c