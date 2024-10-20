SELECT 
A.nombre AS 'categoria',
B.nombre AS 'pariente'
FROM categorias A, categorias B
WHERE A.pariente = B.identificador;

//Muy común en blogs con categorias o tiendas..//