/*

SELECT * ó columna1, columna2, columna...
FROM nombre_tabla
WHERE condiciones_de_filtrado ;

*/

-- FILTRADO BÁSICO
SELECT nombre, salario
FROM empleados
WHERE salario > 5000 AND departamento = 'Ventas';


-- FILTRADO con LIKE
SELECT *
FROM productos
WHERE nombre_producto LIKE 'Camisa%' ;


-- FILTRADO con IN
SELECT *
FROM empleados
WHERE nombre_empleado IN ('Juan', 'María', 'Carlos');


-- FILTRADO con BETWEEN
SELECT * 
FROM ventas
WHERE fecha_venta BETWEEN '2023-01-01' AND '2023-03-31';


-- FILTRADO con OPERADORES AND OR NOT



-- AGREGACIONES



-- AGRUPAMIENTOS



-- ORDENAMIENTO
SELECT nombre_producto, precio
FROM productos
ORDER BY precio DESC;


-- LIMITANDO FILAS
SELECT nombre_producto, precio
FROM productos
ORDER BY precio DESC
LIMIT 3;


/* BLOQUE EJERCICIOS */

SELECT *
FROM practicassql.socios
WHERE NUM_SOCIO < 20000;


SELECT *
FROM practicassql.dgt
WHERE PUNTOS < 5;


-- IN/BETWEEN/LIKE

SELECT *
FROM practicassql.dgt
WHERE DNI LIKE '2%';


SELECT *
FROM practicassql.banco
WHERE IBAN_ASOCIADO LIKE 'FR%' ;


SELECT *
FROM practicassql.socios
WHERE ACCIONES BETWEEN 100 AND 600;


SELECT *
FROM practicassql.banco
WHERE NUM_TARJETA BETWEEN 50000000 AND 80000000;


SELECT *
FROM practicassql.banco
WHERE TITULAR IN ('MIGUEL', 'JUAN');


SELECT *
FROM practicassql.socios
WHERE NOMBRE NOT IN ('MARY', 'PELAYO');


--AGREGACIONES Y GROUP BY

