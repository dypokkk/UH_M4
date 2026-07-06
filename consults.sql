SELECT p.riwi_id, p.riwi_name,
       SUM(CASE WHEN m.riwi_id_movement_type = 2 THEN m.riwi_quantity ELSE -m.riwi_quantity END) AS stock_disponible
FROM riwi_product p
JOIN riwi_movement m ON m.riwi_id_product = p.riwi_id
GROUP BY p.riwi_id, p.riwi_name
ORDER BY p.riwi_name;

SELECT m.riwi_id, m.riwi_date, p.riwi_name AS product, w.riwi_name AS warehouse,
       mt.riwi_name AS movement_type, m.riwi_quantity, m.riwi_price
FROM riwi_movement m
JOIN riwi_product p ON p.riwi_id = m.riwi_id_product
JOIN riwi_warehouse w ON w.riwi_id = m.riwi_id_warehouse
JOIN riwi_movement_type mt ON mt.riwi_id = m.riwi_id_movement_type
ORDER BY m.riwi_date;

SELECT s.riwi_id, s.riwi_name,
       SUM(m.riwi_quantity * m.riwi_price) AS total_comprado
FROM riwi_supplier s
JOIN riwi_order o ON o.riwi_id_supplier = s.riwi_id
JOIN riwi_movement m ON m.riwi_id_order = o.riwi_id
GROUP BY s.riwi_id, s.riwi_name
ORDER BY total_comprado DESC;

SELECT w.riwi_id, w.riwi_name, COUNT(m.riwi_id) AS cantidad_movimientos
FROM riwi_warehouse w
JOIN riwi_movement m ON m.riwi_id_warehouse = w.riwi_id
GROUP BY w.riwi_id, w.riwi_name
ORDER BY cantidad_movimientos DESC;

SELECT p.riwi_id, p.riwi_name, SUM(m.riwi_quantity) AS volumen_comprado
FROM riwi_product p
JOIN riwi_movement m ON m.riwi_id_product = p.riwi_id
WHERE m.riwi_id_movement_type = 2  -- solo entradas (IN) = compras
GROUP BY p.riwi_id, p.riwi_name
ORDER BY volumen_comprado DESC
LIMIT 1;

SELECT w.riwi_id, w.riwi_name,
       SUM(CASE WHEN m.riwi_id_movement_type = 2 THEN m.riwi_quantity * m.riwi_price
                ELSE -m.riwi_quantity * m.riwi_price END) AS valor_inventario
FROM riwi_warehouse w
JOIN riwi_movement m ON m.riwi_id_warehouse = w.riwi_id
GROUP BY w.riwi_id, w.riwi_name
ORDER BY valor_inventario DESC;
