-- =====================================================
-- PROYECTO 1: ANÁLISIS DE VENTAS DE UN SUPERMERCADO
-- Archivo: 04_consultas_productos.sql
-- PostgreSQL
-- =====================================================

-- =====================================================
-- PRODUCTOS 1 - Categorías de productos
-- =====================================================

SELECT DISTINCT product_line
FROM ventas;


/*
"Fashion accessories"
"Electronic accessories"
"Health and beauty"
"Food and beverages"
"Sports and travel"
"Home and lifestyle"
*/


-- =====================================================
-- PRODUCTOS 2 - Facturación por categoría
-- =====================================================

SELECT product_line,
       ROUND(SUM(revenue),2) AS facturacion
FROM ventas
GROUP BY product_line
ORDER BY facturacion DESC;

/*
"Food and beverages"	56144.96
"Sports and travel"	55123.00
"Electronic accessories"	54337.64
"Fashion accessories"	54306.03
"Home and lifestyle"	53861.96
"Health and beauty"	49193.84

La categoría "Food and beverages" es la que genera mayor facturación,
mientras que "Health and beauty" es la que menos ingresos aporta.
*/

-- =====================================================
-- PRODUCTOS 3 - Unidades vendidas por categoría
-- =====================================================

SELECT product_line,
       SUM(quantity) AS unidades_vendidas
FROM ventas
GROUP BY product_line
ORDER BY unidades_vendidas DESC;


/*
"Electronic accessories"	971
"Food and beverages"	952
"Sports and travel"	920
"Home and lifestyle"	911
"Fashion accessories"	902
"Health and beauty"	854

Interpretación

La categoría Electronic accessories es la que vendió un mayor número de
unidades (971), mientras que Health and beauty fue la que menos unidades
vendió (854).
*/


-- =====================================================
-- PRODUCTOS 4 - Ticket medio por categoría
-- =====================================================

SELECT product_line,
       ROUND(AVG(revenue),2) AS ticket_medio
FROM ventas
GROUP BY product_line
ORDER BY ticket_medio DESC;


/*
"Home and lifestyle"	336.64
"Sports and travel"	332.07
"Health and beauty"	323.64
"Food and beverages"	322.67
"Electronic accessories"	319.63
"Fashion accessories"	305.09

Interpretación

La categoría Home and lifestyle presenta el mayor importe medio por
compra (336.64), mientras que Fashion accessories tiene el ticket medio
más bajo (305.09).
*/

-- =====================================================
-- PRODUCTOS 5 - Beneficio bruto por categoría
-- =====================================================

SELECT product_line,
       ROUND(SUM(gross_income),2) AS beneficio_bruto
FROM ventas
GROUP BY product_line
ORDER BY beneficio_bruto DESC;

/*
"Food and beverages"	2673.68
"Sports and travel"		2625.07
"Electronic accessories"	2587.61
"Fashion accessories"	2586.13
"Home and lifestyle"	2564.90
"Health and beauty"		2342.66

Interpretación

Food and beverages es la categoría que genera el mayor beneficio bruto,
mientras que Health and beauty es la que menos beneficio aporta.

*/

-- =====================================================
-- PRODUCTOS 6 - Valoración media por categoría
-- =====================================================

SELECT product_line,
       ROUND(AVG(rating),2) AS valoracion_media
FROM ventas
GROUP BY product_line
ORDER BY valoracion_media DESC;

/*
"Food and beverages"	7.11
"Fashion accessories"	7.03
"Health and beauty"	7.00
"Electronic accessories"	6.92
"Sports and travel"	6.92
"Home and lifestyle"	6.84

Interpretación

Los clientes valoran mejor la categoría Food and beverages (7.11 sobre
10), mientras que Home and lifestyle obtiene la valoración media más baja
(6.84).

*/



