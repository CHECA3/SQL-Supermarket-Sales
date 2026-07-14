-- =====================================================
-- PROYECTO 1: ANÁLISIS DE VENTAS DE UN SUPERMERCADO
-- Archivo: 01_creacion_tabla.sql
-- PostgreSQL
-- =====================================================

CREATE TABLE ventas (
    invoice_id VARCHAR(20),
    branch VARCHAR(5),
    city VARCHAR(50),
    customer_type VARCHAR(20),
    gender_customer VARCHAR(10),
    product_line VARCHAR(100),
    unit_cost NUMERIC(10,2),
    quantity INTEGER,
    "5pct_markup" NUMERIC(10,2),
    revenue NUMERIC(10,2),
    date DATE,
    time TIME,
    payment_method VARCHAR(20),
    cogs NUMERIC(10,2),
    gm_pct NUMERIC(10,2),
    gross_income NUMERIC(10,2),
    rating NUMERIC(3,1)
);