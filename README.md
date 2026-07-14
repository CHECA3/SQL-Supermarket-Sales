# Proyecto 1 - Análisis de ventas de un supermercado

## Descripción

Este proyecto analiza un conjunto de datos de ventas de un supermercado utilizando **PostgreSQL** y **SQL**.

El objetivo es obtener indicadores clave de negocio (KPIs) y responder preguntas sobre clientes, productos, sucursales y evolución temporal de las ventas.

Este proyecto forma parte de mi portfolio de análisis de datos.

---

## Tecnologías utilizadas

- PostgreSQL 18
- pgAdmin 4
- SQL

---

## Dataset

Se ha utilizado el conjunto de datos **Supermarket Sales**, que contiene información sobre:

- Facturas
- Clientes
- Productos
- Sucursales
- Métodos de pago
- Fechas y horas
- Ingresos
- Beneficios
- Valoraciones

---

## Estructura del proyecto

```
SQL-Supermarket-Sales/

├── data/
│   └── supermarket_sales.csv
│
├── sql/
│   ├── 01_creacion_tabla.sql
│   ├── 02_consultas_kpis.sql
│   ├── 03_consultas_clientes.sql
│   ├── 04_consultas_productos.sql
│   ├── 05_consultas_sucursales.sql
│   └── 06_consultas_temporales.sql
│
├── 00_importacion_datos.md
└── README.md
```

---

## 📊 KPIs analizados

- Número total de ventas
- Facturación total
- Ticket medio
- Beneficio bruto
- Unidades vendidas
- Valoración media de los clientes

---

## 🔍 Análisis realizados

### Clientes

- Número de clientes Member y Normal
- Facturación por tipo de cliente
- Ticket medio
- Método de pago
- Valoración media

### Productos

- Facturación por categoría
- Unidades vendidas
- Beneficio bruto
- Ticket medio
- Valoración media

### Sucursales

- Facturación por ciudad
- Facturación por sucursal
- Beneficio por sucursal
- Valoración media
- Unidades vendidas

### Análisis temporal

- Facturación por mes
- Número de ventas por mes
- Facturación por día de la semana
- Facturación por hora
- Ticket medio por mes
- Beneficio por mes
- Top 10 días con mayor facturación

---

## Principales conclusiones

- El supermercado registró **1000 transacciones**.
- La facturación total fue de **322.967,43**.
- Los clientes **Member** generaron una facturación ligeramente superior a los clientes Normal.
- La categoría **Food and beverages** fue la que obtuvo mayor facturación.
- La sucursal **C (Naypyitaw)** fue la más rentable.
- Las **19:00 horas** concentraron la mayor facturación.
- **Enero** fue el mes con mejores resultados.

---

## Próximos pasos

- Crear un dashboard en Power BI.
- Añadir visualizaciones interactivas.
- Incorporar consultas SQL avanzadas (Window Functions).

---

## Autor

Antonia Cazalilla Checa

LinkedIn: 

GitHub: CHECA3