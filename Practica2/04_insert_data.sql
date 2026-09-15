USE `garcia-castorena`;

INSERT INTO Clientes (documento, nombreCompleto, telefono, correo) VALUES
('4001', 'Ana Torres Uc', '9991234501', 'ana.torres@mail.com'),
('4002', 'Luis Chan Poot', '9991234502', 'luis.chan@mail.com'),
('4003', 'Marta Dzul Ku', '9991234503', 'marta.dzul@mail.com'),
('4004', 'Jorge Balam Ek', '9991234504', 'jorge.balam@mail.com'),
('4005', 'Rosa Pech Uicab', '9991234505', 'rosa.pech@mail.com');

INSERT INTO Veterinarios (documento, nombreCompleto, especialidad, telefono) VALUES
('5001', 'Carlos Medina', 'Medicina general', '9992345601'),
('5002', 'Paula Rivas', 'Cirugia', '9992345602'),
('5003', 'Ivan Cetz', 'Dermatologia', '9992345603'),
('5004', 'Karla Novelo', 'Odontologia veterinaria', '9992345604'),
('5005', 'Emilio Puc', 'Medicina general', '9992345605');

INSERT INTO Medicamentos (codigo, nombreComercial, laboratorio, precioUnitario) VALUES
('MED001', 'Amoxicilina 250mg', 'PetLab', 85.00),
('MED002', 'Ibuprofeno Veterinario', 'VetPharma', 60.00),
('MED003', 'Desparasitante Total', 'Bayer', 120.00),
('MED004', 'Vitamina Complex B', 'PetLab', 95.00),
('MED005', 'Antiinflamatorio Meloxicam', 'VetPharma', 150.00);

INSERT INTO Mascotas (nombre, especie, raza, fechaNacimiento, idCliente) VALUES
('Firulais', 'Perro', 'Labrador', '2021-03-10', 1),
('Michi', 'Gato', 'Siames', '2020-07-22', 2),
('Toby', 'Perro', 'Criollo', '2019-11-05', 3),
('Luna', 'Gato', 'Persa', '2022-01-15', 4),
('Rocky', 'Perro', 'Bulldog', '2021-09-30', 5);

INSERT INTO Atenciones (fechaHora, diagnostico, costoBase, idMascota, idVeterinario) VALUES
('2026-08-01 09:00:00', 'Revision general, sin anomalias', 300.00, 1, 1),
('2026-08-02 10:30:00', 'Infeccion de piel leve', 350.00, 2, 3),
('2026-08-03 11:15:00', 'Parasitos intestinales detectados', 280.00, 3, 5),
('2026-08-04 15:00:00', 'Limpieza dental', 400.00, 4, 4),
('2026-08-05 16:45:00', 'Postoperatorio de esterilizacion', 500.00, 5, 2);

INSERT INTO Prescripciones (idAtencion, idMedicamento, cantidad, indicaciones) VALUES
(1, 4, 1, '1 tableta cada 24 horas por 10 dias'),
(2, 1, 2, '1 pastilla cada 8 horas por 7 dias'),
(3, 3, 1, 'Dosis unica, repetir en 3 meses'),
(4, 2, 1, '1 pastilla cada 12 horas por 3 dias'),
(5, 5, 1, '1 tableta cada 24 horas por 5 dias');
