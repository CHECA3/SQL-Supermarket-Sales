-- =====================================================
-- PROYECTO 1: ANÁLISIS DE VENTAS DE UN SUPERMERCADO
-- Archivo: 03_consultas_clientes.sql
-- PostgreSQL
-- =====================================================


-- =====================================================
-- CLIENTES 1 - Número de compras por tipo de cliente
-- =====================================================

SELECT customer_type,
       COUNT(*) AS numero_compras
FROM ventas
GROUP BY customer_type;


-- Interpretacion: La distribución de compras está muy equilibrada. 
-- Los clientes Member realizaron 501 compras (50,1 %) y los clientes 
-- Normal 499 compras (49,9 %).


-- =====================================================
-- CLIENTES 2 - Facturación por tipo de cliente
-- =====================================================
SELECT customer_type,
       ROUND(SUM(revenue),2) AS facturacion
FROM ventas
GROUP BY customer_type
ORDER BY facturacion DESC;

/*
"Member"	164223.81
"Normal"	158743.62

 Interpretación

 Los clientes Member generaron una facturación ligeramente superior 
 (164.223,81) frente a los clientes Normal (158.743,62).

*/

-- =====================================================
-- CLIENTES 3 - Ticket medio por tipo de cliente
-- =====================================================

SELECT customer_type,
       ROUND(AVG(revenue),2) AS ticket_medio
FROM ventas
GROUP BY customer_type
ORDER BY ticket_medio DESC;

/*
Resultado
Member	327.79
Normal	318.12

Interpretación

Los clientes Member realizan compras de mayor importe medio
que los clientes Normal.
*/



-- =====================================================
-- CLIENTES 4 - Valoración media por tipo de cliente
-- =====================================================

SELECT customer_type,
       ROUND(AVG(rating), 2) AS valoracion_media
FROM ventas
GROUP BY customer_type
ORDER BY valoracion_media DESC;


/*
Resultado:
"Normal"	7.01
"Member"	6.94


Interpretación
Los clientes Normal otorgaron una valoración media ligeramente superior
(7.01) a la de los clientes Member (6.94).
*/

-- =====================================================
-- CLIENTES 5 - Método de pago por tipo de cliente
-- =====================================================

SELECT customer_type,
       payment_method,
       COUNT(*) AS numero_compras
FROM ventas
GROUP BY customer_type,
         payment_method
ORDER BY customer_type,
         numero_compras DESC;


/*
Resultado

Member
- Credit card : 172
- Cash        : 168
- Ewallet     : 161

Normal
- Ewallet     : 184
- Cash        : 176
- Credit card : 139

Interpretación

Los clientes Member utilizan con mayor frecuencia la tarjeta de crédito,
mientras que los clientes Normal prefieren el pago mediante Ewallet.
*/

