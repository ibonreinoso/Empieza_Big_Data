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
