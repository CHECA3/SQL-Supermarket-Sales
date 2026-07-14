-- =====================================================
-- PROYECTO 1: ANÁLISIS DE VENTAS DE UN SUPERMERCADO
-- Archivo: 02_consultas_kpis.sql
-- PostgreSQL
-- =====================================================
-- =====================================================
-- KPI 1 - Número total de ventas
-- =====================================================

SELECT COUNT(*) AS total_ventas
FROM ventas;

-- Resultado:
-- 1000

-- Interpretación:
-- El supermercado registró un total de 1000 transacciones.

-- =====================================================
-- KPI 2 - Facturación total
-- =====================================================

SELECT SUM(revenue) AS facturacion_total
FROM ventas;

-- Resultado:
-- 322967.43

-- Interpretación:
-- La facturación total del supermercado fue de 322967.43


-- =====================================================
-- KPI 3 - Ticket medio
-- =====================================================

SELECT AVG(revenue) AS ticket_medio
FROM ventas;

-- Resultado:
-- 322.96

-- Interpretación:
-- El importe medio por transacción fue de 322.96€.

-- =====================================================
-- KPI 4 - Unidades vendidas
-- =====================================================

SELECT SUM(quantity) AS unidades_vendidas
FROM ventas;

-- Resultado:
-- 5510

-- Interpretación:
-- Se vendieron un total de 5510 unidades.

-- =====================================================
-- KPI 5 - Valoración media
-- =====================================================

SELECT ROUND(AVG(rating),2) AS valoracion_media
FROM ventas;

-- Resultado:
-- 6.97

-- Interpretación:
-- La valoración media otorgada por los clientes fue de 6.97 sobre 10.

-- =====================================================
-- KPI 6 - Beneficio bruto total
-- =====================================================

SELECT SUM(gross_income) AS beneficio_bruto
FROM ventas;

-- Resultado:
-- 15380.05

-- Interpretación:
-- El beneficio bruto total obtenido fue de 15380,05.

