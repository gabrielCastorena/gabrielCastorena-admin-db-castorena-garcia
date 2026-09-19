USE tienda;

-- Producto de prueba: stock 3
INSERT INTO producto (nombre, precio, stock) VALUES ('Mouse', 500.00, 3);
SET @id_producto = LAST_INSERT_ID();

SELECT 'STOCK ANTES' AS momento, nombre, stock FROM producto WHERE id_producto = @id_producto;

-- Intento de comprar 5 unidades
START TRANSACTION;

INSERT INTO compras (total) VALUES (2500.00);
SET @id_compra = LAST_INSERT_ID();

INSERT INTO detalle_compra (id_compra, id_producto, cantidad, precio_unitario)
VALUES (@id_compra, @id_producto, 5, 500.00);
UPDATE producto SET stock = stock - 5 WHERE id_producto = @id_producto;

-- Deshacer lo anterior
ROLLBACK;

-- Verificación
SELECT 'STOCK DESPUES' AS momento, nombre, stock FROM producto WHERE id_producto = @id_producto;
SELECT * FROM compras WHERE id_compra = @id_compra;
SELECT * FROM detalle_compra WHERE id_compra = @id_compra;
