-- ==========================================
-- TechStore - Consultas Básicas SELECT
-- Autor: Nazarena Rodríguez
-- Fecha: 2026-11-13
-- Motor: SQL Server (SSMS)
-- ==========================================

-- Consulta 1: Exploración general de la tabla sales
-- SELECT * permite revisar rápidamente todas las columnas durante el desarrollo.
-- En producción es mejor seleccionar solo las columnas necesarias para evitar
-- transferir datos innecesarios y depender de cambios en la estructura de la tabla.
SELECT *
FROM sales;

-- Consulta 2: Selección de columnas especificas para Finanzas
-- Se muestran solamente el identificador del cliente, el del producto y el monto.
SELECT
    customer_id,
    product_id,
    total_amount
FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders
-- AS muestra encabezados más claros sin modificar los nombres originales de la tabla.
SELECT
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;
