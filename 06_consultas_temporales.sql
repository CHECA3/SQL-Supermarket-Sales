-- =====================================================
-- PROYECTO 1: ANÁLISIS DE VENTAS DE UN SUPERMERCADO
-- Archivo: 06_consultas_temporales.sql
-- PostgreSQL
-- =====================================================

-- =====================================================
-- TEMPORAL 1 - Facturación por mes
-- =====================================================

SELECT EXTRACT(MONTH FROM date) AS mes,
       ROUND(SUM(revenue),2) AS facturacion
FROM ventas
GROUP BY mes
ORDER BY mes;


/*
1	116292.11
2	97219.58
3	109455.74

Interpretación

Enero fue el mes con mayor facturación, seguido de marzo.
Febrero registró la menor facturación de los tres meses analizados.
*/


-- =====================================================
-- TEMPORAL 2 - Número de ventas por mes
-- =====================================================

SELECT EXTRACT(MONTH FROM date) AS mes,
       COUNT(*) AS numero_ventas
FROM ventas
GROUP BY mes
ORDER BY mes;

/*
1	352
2	303
3	345

Interpretación

Enero fue el mes con mayor número de ventas (352),
mientras que febrero registró la menor actividad comercial.
*/

-- =====================================================
-- TEMPORAL 3 - Facturación por día de la semana
-- =====================================================

SELECT TO_CHAR(date,'Day') AS dia_semana,
       ROUND(SUM(revenue),2) AS facturacion
FROM ventas
GROUP BY dia_semana
ORDER BY facturacion DESC;

/*
"Saturday "	56120.86
"Tuesday  "	51482.39
"Thursday "	45349.34
"Sunday   "	44458.02
"Friday   "	43926.43
"Wednesday"	43731.24

Interpretación

El sábado es el día con mayor facturación del supermercado,
mientras que el miércoles presenta la menor facturación entre los
días disponibles en el conjunto de datos.
*/


-- =====================================================
-- TEMPORAL 4 - Número de ventas por hora
-- =====================================================

SELECT EXTRACT(HOUR FROM time) AS hora,
       COUNT(*) AS numero_ventas
FROM ventas
GROUP BY hora
ORDER BY hora;

/*
10	101
11	90
12	89
13	103
14	83
15	102
16	77
17	74
18	93
19	113
20	75

Interpretación

La mayor actividad comercial se concentra a las 19:00 horas,
con 113 ventas registradas.
Las 17:00 horas presentan el menor número de ventas.
*/


-- =====================================================
-- TEMPORAL 5 - Facturación por hora
-- =====================================================

SELECT EXTRACT(HOUR FROM time) AS hora,
       ROUND(SUM(revenue),2) AS facturacion
FROM ventas
GROUP BY hora
ORDER BY hora;

/*
10	31421.57
11	30377.43
12	26065.94
13	34723.32
14	30828.46
15	31179.57
16	25226.35
17	24445.29
18	26030.36
19	39699.58
20	22969.56

Interpretación

La franja de las 19:00 horas genera la mayor facturación,
mientras que las 20:00 horas registra la menor facturación del día.
*/

-- =====================================================
-- TEMPORAL 6 - Ticket medio por mes
-- =====================================================

SELECT EXTRACT(MONTH FROM date) AS mes,
       ROUND(AVG(revenue),2) AS ticket_medio
FROM ventas
GROUP BY mes
ORDER BY mes;


/*
1	330.38
2	320.86
3	317.26

Interpretación

El ticket medio más elevado se registra en enero,
lo que indica que las compras realizadas durante ese mes
fueron de mayor importe medio.
*/


-- =====================================================
-- TEMPORAL 7 - Beneficio bruto por mes
-- =====================================================

SELECT EXTRACT(MONTH FROM date) AS mes,
       ROUND(SUM(gross_income),2) AS beneficio_bruto
FROM ventas
GROUP BY mes
ORDER BY mes;


/*

1	5537.95
2	4629.70
3	5212.40

Interpretación

Enero es el mes con mayor beneficio bruto,
seguido de marzo.
Febrero obtiene el beneficio más bajo.
*/



-- =====================================================
-- TEMPORAL 8 - Top 10 días con mayor facturación
-- =====================================================

SELECT date,
       ROUND(SUM(revenue),2) AS facturacion
FROM ventas
GROUP BY date
ORDER BY facturacion DESC
LIMIT 10;


/*
2019-03-09 	7474.05
209-02-07	7228.22
2019-03-14	7214.63
2019-02-15	6830.79
2019-03-02	6560.31
2019-03-05	6230.90
2019-01-23	5994.20
2019-01-15	5944.29
2019-02-27	5859.46
2019-03-19	5740.41

Interpretación

El día con mayor facturación del periodo analizado fue
el 9 de marzo de 2019, con unos ingresos de 7474.05.
*/ 