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
