-- 1. Реляционнные базы данных
-- 2. Установка
-- 3. Проектирование базы данных, нормальные формы
-- 4. SQL-команда CREATE
CREATE SCHEMA `shop` DEFAULT CHARACTER SET utf8 ;
-- 5. SQL-команда INSERT
-- 6. SQL-команды SELECT и WHERE
SELECT * FROM category WHERE NOT (discount < 5);
SELECT * FROM category WHERE alias IS NOT NULL;
SELECT * FROM category WHERE alias IS NULL;
-- 7. SQL-команды DISTINCT, ORDER BY, LIMIT
SELECT DISTINCT discount FROM category WHERE alias IS NULL;
SELECT * FROM category ORDER BY discount ASC;
SELECT * FROM category ORDER BY discount DESC;
SELECT * FROM category LIMIT 2;
-- 8. SQL-команды DELETE и UPDATE
UPDATE category SET discount = 3 WHERE id IN (2, 3, 5);
DELETE FROM category WHERE id = 5;
-- 9. Согласованность данных
-- 10. Внешний ключ
-- 11. Создание таблиц с отношением “многие ко многим”
-- 12. Составной первичный ключ
-- 13. Объединение данных из нескольких таблиц
-- 14. Оператор INNER JOIN
SELECT * FROM product INNER JOIN category on product.category_id = category.id;
-- 15. Операторы LEFT JOIN, RIGHT JOIN
SELECT brand.name as brand_name FROM brand;
-- 16. Оператор UNION
	-- это склейка запросов
-- 17. Агрегирующие функции
SELECT COUNT(*) FROM product;
SELECT SUM(price) FROM product;
SELECT MIN(price), MAX(price) FROM product;
-- 18. Оператор GROUP BY
-- 19. Индексы
	-- having
	-- производительность
-- 20. Транзакции
START TRANSACTION;
	-- SQL request
COMMIT;