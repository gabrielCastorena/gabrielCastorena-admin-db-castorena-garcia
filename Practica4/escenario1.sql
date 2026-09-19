USE tienda;

-- Producto de prueba: stock 10
INSERT INTO producto (nombre, precio, stock) VALUES ('Laptop', 15000.00, 10);
SET @id_producto = LAST_INSERT_ID();

SELECT 'STOCK ANTES' AS momento, nombre, stock FROM producto WHERE id_producto = @id_producto;

-- Compra de 2 unidades
START TRANSACTION;

INSERT INTO compras (total) VALUES (30000.00);
SET @id_compra = LAST_INSERT_ID();

UPDATE producto SET stock = stock - 2 WHERE id_producto = @id_producto;

INSERT INTO detalle_compra (id_compra, id_producto, cantidad, precio_unitario)
VALUES (@id_compra, @id_producto, 2, 15000.00);

INSERT INTO pagos (id_compra, monto, metodo_pago)
VALUES (@id_compra, 30000.00, 'tarjeta');

UPDATE compras SET estado = 'pagada' WHERE id_compra = @id_compra;

COMMIT;

-- Verificación
SELECT 'STOCK DESPUES' AS momento, nombre, stock FROM producto WHERE id_producto = @id_producto;
SELECT * FROM compras WHERE id_compra = @id_compra;
SELECT * FROM detalle_compra WHERE id_compra = @id_compra;
SELECT * FROM pagos WHERE id_compra = @id_compra;
