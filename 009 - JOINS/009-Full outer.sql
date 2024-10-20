SELECT *
FROM alumnos
LEFT JOIN matriculas ON alumnos.nombre = matriculas.alumno

UNION 

SELECT *
FROM alumnos
RIGHT JOIN matriculas ON alumnos.nombre = matriculas.alumno; 

//Mirar SQL P.9//