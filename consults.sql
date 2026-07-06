SELECT p.riwi_id, p.riwi_name,
       SUM(CASE WHEN m.riwi_id_movement_type = 2 THEN m.riwi_quantity ELSE -m.riwi_quantity END) AS stock_disponible
FROM riwi_product p
JOIN riwi_movement m ON m.riwi_id_product = p.riwi_id
GROUP BY p.riwi_id, p.riwi_name
ORDER BY p.riwi_name;
