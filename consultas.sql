-- Top ventas por zona
SELECT zona, SUM(total) as ventas_totales FROM ventas GROUP BY zona ORDER BY ventas_totales DESC;
-- Top 3 productos
SELECT producto, SUM(cantidad) as unidades FROM ventas GROUP BY producto ORDER BY unidades DESC LIMIT 3;
-- Vendedor top
SELECT vendedor, SUM(total) as total_vendido FROM ventas GROUP BY vendedor ORDER BY total_vendido DESC;
-- Ventas por mes
SELECT strftime('%Y-%m', fecha) as mes, SUM(total) as ventas FROM ventas GROUP BY mes;
-- Anomalias > 100k
SELECT * FROM ventas WHERE total > 100000 ORDER BY total DESC;