# Proyecto 1 - Análisis de ventas de un supermercado

## Objetivo

Analizar las ventas de un supermercado utilizando PostgreSQL y SQL para obtener indicadores de negocio (KPIs) y responder preguntas relacionadas con clientes, productos, sucursales y evolución temporal.

---

## Tecnologías utilizadas

- PostgreSQL 18
- pgAdmin 4
- SQL

---

## Dataset

Archivo utilizado:

supermarket_sales.csv

Ubicación:

/data/supermarket_sales.csv

---

## Paso 1. Crear la base de datos

Crear una base de datos llamada:

supermercado

---

## Paso 2. Crear la tabla

Ejecutar el archivo:

sql/01_creacion_tabla.sql

---

## Paso 3. Importar el CSV

Importar el archivo:

data/supermarket_sales.csv

Configuración utilizada:

- Formato CSV
- Header activado
- Encoding UTF-8

---

## Paso 4. Ejecutar las consultas

Ejecutar los siguientes archivos:

- sql/02_consultas_kpis.sql
- sql/03_consultas_clientes.sql
- sql/04_consultas_productos.sql
- sql/05_consultas_sucursales.sql
- sql/06_consultas_temporales.sql

---

## Resultado

El proyecto permite analizar:

- KPIs generales
- Clientes
- Productos
- Sucursales
- Evolución temporal de las ventas

Los resultados pueden utilizarse posteriormente para crear un dashboard en Power BI.