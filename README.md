# TechStore — Consultas básicas SELECT y alias

**Autora:** Nazarena Rodríguez  
**Herramienta:** SQL Server Management Studio (SSMS)  
**Práctica:** Consultas para el equipo de finanzas

## Objetivo

Crear tres consultas sobre la tabla `sales` para explorar datos, seleccionar la información que necesita Finanzas y mostrar nombres de columnas fáciles de interpretar.

## Consultas incluidas

1. **Exploración general:** `SELECT * FROM sales;` permite inspeccionar todas las columnas durante el aprendizaje o la exploración inicial.
2. **Selección específica:** devuelve `customer_id`, `product_id` y `total_amount`, sin traer columnas que Finanzas no necesita.
3. **Alias en español:** muestra `order_date` como `fecha_pedido`, `product_name` como `nombre_producto` y `quantity` como `cantidad_unidades`.

## ¿Por qué es mala práctica usar `SELECT *` en producción?

- **Rendimiento:** trae todas las columnas, incluso las que no se utilizan. Esto puede consumir más memoria, ancho de banda y tiempo de lectura, especialmente con tablas grandes.
- **Mantenibilidad:** si alguien agrega columnas a `sales`, el resultado de `SELECT *` cambia sin que se modifique la consulta. Esto puede afectar reportes y procesos que esperan una estructura fija.
- **Seguridad:** puede exponer información que el reporte no necesita, como datos personales si la tabla los contiene.

Por ejemplo, para un reporte de importes es preferible:

```sql
SELECT customer_id, product_id, total_amount
FROM sales;
```

Así se obtienen únicamente los datos relevantes.

## ¿Por qué son importantes los alias para una persona no técnica?

Los alias presentan los resultados con nombres claros, sin modificar las columnas originales de la base. Por ejemplo, alguien de Finanzas puede no reconocer `total_amount`, pero sí **monto_total**:

```sql
SELECT total_amount AS monto_total
FROM sales;
```

La columna se mostrará como `monto_total` en el resultado. Esto facilita la lectura de reportes y reduce las dudas al compartir datos con otras áreas.

En la tercera consulta del ejercicio se usa el mismo principio:

```sql
SELECT
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;
```

## Cómo ejecutar las consultas

1. Abrir SQL Server Management Studio (SSMS) y conectarse al servidor.
2. Crear y cargar la tabla `sales` con el script de datos facilitado en la consigna (10 pedidos). Si se trabaja con el archivo de preparación local, ejecutarlo primero; no hace falta subirlo al repositorio de la entrega.
3. Seleccionar la base de datos que contiene `sales`.
4. Abrir `consultas_basicas.sql` y ejecutar las tres consultas con **F5**.
5. Verificar que cada consulta devuelva **10 filas**.

## Archivos del repositorio

- `consultas_basicas.sql`: las tres consultas solicitadas.
- `README.md`: explicación del ejercicio y de las decisiones tomadas.
