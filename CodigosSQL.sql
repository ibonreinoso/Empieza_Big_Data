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

SELECT * 
FROM productos 
WHERE categoria = 'Electrónicos' OR categoria = 'Accesorios';


SELECT * 
FROM productos 
WHERE categoria = 'Ropa' AND precio > 50;


SELECT * 
FROM empleados 
WHERE NOT cargo = 'Gerente';


-- AGREGACIONES


SELECT COUNT(*) AS total_rows 
FROM customers;


SELECT SUM(price) AS total_sales 
FROM orders;


SELECT AVG(age) AS average_age 
FROM employees;


SELECT MIN(balance) AS lowest_balance 
FROM accounts;


SELECT MAX(score) AS highest_score 
FROM students;


SELECT GROUP_CONCAT(product_name) AS product_list 
FROM products;


SELECT department, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department;


SELECT department, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department 
HAVING avg_salary > 50000;


SELECT DISTINCT department 
FROM employees;


-- AGRUPAMIENTOS

SELECT Producto, SUM(Cantidad) AS TotalVendido
FROM Ventas
GROUP BY Producto;


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

SELECT AVG(SALDO) 
FROM practicassql.banco;


SELECT MIN(PUNTOS)
FROM practicassql.dgt
WHERE PUNTOS >= 1;



SELECT TIPO_CARNE, MIN(PUNTOS)
FROM practicassql.dgt
WHERE PUNTOS >= 1
GROUP BY TIPO_CARNE;



SELECT max(ACCIONES), MIN(ACCIONES), AVG(ACCIONES)
FROM practicassql.socios;


