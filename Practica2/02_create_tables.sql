USE `garcia-castorena`;

CREATE TABLE Clientes (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    documento VARCHAR(20) NOT NULL UNIQUE,
    nombreCompleto VARCHAR(150) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100)
);

CREATE TABLE Mascotas (
    idMascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50),
    raza VARCHAR(50),
    fechaNacimiento DATE,
    idCliente INT NOT NULL
);

CREATE TABLE Veterinarios (
    idVeterinario INT AUTO_INCREMENT PRIMARY KEY,
    documento VARCHAR(20) NOT NULL UNIQUE,
    nombreCompleto VARCHAR(150) NOT NULL,
    especialidad VARCHAR(80),
    telefono VARCHAR(20)
);

CREATE TABLE Atenciones (
    idAtencion INT AUTO_INCREMENT PRIMARY KEY,
    fechaHora DATETIME NOT NULL,
    diagnostico TEXT,
    costoBase DECIMAL(10,2),
    idMascota INT NOT NULL,
    idVeterinario INT NOT NULL
);

CREATE TABLE Medicamentos (
    idMedicamento INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    nombreComercial VARCHAR(100) NOT NULL,
    laboratorio VARCHAR(100),
    precioUnitario DECIMAL(10,2)
);

CREATE TABLE Prescripciones (
    idPrescripcion INT AUTO_INCREMENT PRIMARY KEY,
    idAtencion INT NOT NULL,
    idMedicamento INT NOT NULL,
    cantidad INT NOT NULL,
    indicaciones VARCHAR(255)
);
