-- =====================================================
-- PROYECTO 1: ANÁLISIS DE VENTAS DE UN SUPERMERCADO
-- Archivo: 05_consultas_sucursales.sql
-- PostgreSQL
-- =====================================================

-- =====================================================
-- SUCURSALES 1 - Número de ventas por ciudad
-- =====================================================

SELECT city,
       COUNT(*) AS numero_ventas
FROM ventas
GROUP BY city
ORDER BY numero_ventas DESC;

/*
Resultado: 

"Yangon"	340
"Mandalay"	332
"Naypyitaw"	328

Interpretación

Yangon es la ciudad con mayor número de ventas (340 transacciones),
mientras que Naypyitaw registra el menor número de ventas (328).
La diferencia entre las tres ciudades es reducida.
*/

-- =====================================================
-- SUCURSALES 2 - Facturación por ciudad
-- =====================================================

SELECT city,
       ROUND(SUM(revenue),2) AS facturacion
FROM ventas
GROUP BY city
ORDER BY facturacion DESC;


/*
Resultado: 

"Naypyitaw"	110568.86
"Yangon"	106200.57
"Mandalay"	106198.00

Interpretación

Naypyitaw es la ciudad que genera la mayor facturación.
Yangon y Mandalay presentan una facturación prácticamente idéntica.
*/



-- =====================================================
-- SUCURSALES 3 - Facturación por sucursal
-- =====================================================

SELECT branch,
       ROUND(SUM(revenue),2) AS facturacion
FROM ventas
GROUP BY branch
ORDER BY facturacion DESC;

/*
Resultado: 

"C"	110568.86
"A"	106200.57
"B"	106198.00

Interpretación

La sucursal C es la que obtiene la mayor facturación,
mientras que las sucursales A y B presentan ingresos muy similares.
*/


-- =====================================================
-- SUCURSALES 4 - Unidades vendidas por sucursal
-- =====================================================

SELECT branch,
       SUM(quantity) AS unidades_vendidas
FROM ventas
GROUP BY branch
ORDER BY unidades_vendidas DESC;

/*
Resultado: 

"A"	1859
"C"	1831
"B"	1820

Interpretación

La sucursal A es la que vende un mayor número de unidades.
Sin embargo, no es la que más factura, lo que indica que el precio medio
de los productos vendidos es inferior al de la sucursal C.
*/

-- =====================================================
-- SUCURSALES 5 - Beneficio bruto por sucursal
-- =====================================================

SELECT branch,
       ROUND(SUM(gross_income),2) AS beneficio_bruto
FROM ventas
GROUP BY branch
ORDER BY beneficio_bruto DESC;


/*
Resultado: 

"C"	5265.33
"A"	5057.36
"B"	5057.36

Interpretación

La sucursal C obtiene el mayor beneficio bruto.
Las sucursales A y B presentan un beneficio prácticamente igual.
*/

-- =====================================================
-- SUCURSALES 6 - Valoración media por ciudad
-- =====================================================

SELECT city,
       ROUND(AVG(rating),2) AS valoracion_media
FROM ventas
GROUP BY city
ORDER BY valoracion_media DESC;

/*
Resultado: 

"Naypyitaw"	7.07
"Yangon"	7.03
"Mandalay"	6.82

Interpretación

Los clientes de Naypyitaw son los que otorgan la mayor valoración media,
mientras que Mandalay obtiene la puntuación más baja.
No obstante, las diferencias entre ciudades son pequeñas.
*/

-- =====================================================
-- SUCURSALES 7 - Valoración media por sucursal
-- =====================================================

SELECT branch,
       ROUND(AVG(rating),2) AS valoracion_media
FROM ventas
GROUP BY branch
ORDER BY valoracion_media DESC;

/*
Resultado: 

"C"	7.07
"A"	7.03
"B"	6.82

Interpretación

La sucursal C presenta la mayor valoración media de los clientes,
seguida de la sucursal A.
La sucursal B obtiene la valoración más baja.
*/


-- =====================================================
-- SUCURSALES 8 - Facturación por ciudad y sucursal
-- =====================================================

SELECT city,
       branch,
       ROUND(SUM(revenue),2) AS facturacion
FROM ventas
GROUP BY city,
         branch
ORDER BY facturacion DESC;


/*
Resultado:

"Naypyitaw"	"C"	110568.86
"Yangon"	"A"	106200.57
"Mandalay"	"B"	106198.00

Interpretación

La combinación ciudad-sucursal con mayor facturación corresponde a
Naypyitaw (Sucursal C).
*/
