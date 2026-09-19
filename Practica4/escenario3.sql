USE tienda;

-- Producto de prueba: stock 10
INSERT INTO producto (nombre, precio, stock) VALUES ('Teclado', 800.00, 10);
SET @id_producto = LAST_INSERT_ID();

SELECT 'STOCK ANTES' AS momento, nombre, stock FROM producto WHERE id_producto = @id_producto;

-- Compra válida de 1 unidad pero pago en ceros
START TRANSACTION;

INSERT INTO compras (total) VALUES (800.00);
SET @id_compra = LAST_INSERT_ID();

UPDATE producto SET stock = stock - 1 WHERE id_producto = @id_producto;

INSERT INTO detalle_compra (id_compra, id_producto, cantidad, precio_unitario)
VALUES (@id_compra, @id_producto, 1, 800.00);
INSERT INTO pagos (id_compra, monto, metodo_pago)
VALUES (@id_compra, 0.00, 'tarjeta');

-- Revertir todo: compra, stock y detalle
ROLLBACK;

-- Verificación: stock intacto y sin compra, detalle ni pago
SELECT 'STOCK DESPUES' AS momento, nombre, stock FROM producto WHERE id_producto = @id_producto;
SELECT * FROM compras WHERE id_compra = @id_compra;
SELECT * FROM detalle_compra WHERE id_compra = @id_compra;
SELECT * FROM pagos WHERE id_compra = @id_compra;
