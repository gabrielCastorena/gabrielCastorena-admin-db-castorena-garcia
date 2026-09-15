USE `garcia-castorena`;

ALTER TABLE Mascotas
    ADD CONSTRAINT fkMascotasCliente
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente);

ALTER TABLE Atenciones
    ADD CONSTRAINT fkAtencionesMascota
    FOREIGN KEY (idMascota) REFERENCES Mascotas(idMascota);

ALTER TABLE Atenciones
    ADD CONSTRAINT fkAtencionesVeterinario
    FOREIGN KEY (idVeterinario) REFERENCES Veterinarios(idVeterinario);

ALTER TABLE Prescripciones
    ADD CONSTRAINT fkPrescripcionesAtencion
    FOREIGN KEY (idAtencion) REFERENCES Atenciones(idAtencion);

ALTER TABLE Prescripciones
    ADD CONSTRAINT fkPrescripcionesMedicamento
    FOREIGN KEY (idMedicamento) REFERENCES Medicamentos(idMedicamento);
