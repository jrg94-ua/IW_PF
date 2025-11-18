-- Datos iniciales para Clínica de Fisioterapia

-- SERVICIOS
INSERT INTO servicio (oid, name, description, category, price, active) VALUES 
(1, 'Fisioterapia Deportiva', 'Tratamiento especializado para lesiones deportivas', 'Deportiva', 45.00, true),
(2, 'Rehabilitación Postoperatoria', 'Recuperación tras cirugía ortopédica', 'Rehabilitación', 50.00, true),
(3, 'Masaje Terapéutico', 'Masaje para alivio de tensiones musculares', 'Terapéutico', 35.00, true),
(4, 'Electroterapia', 'Tratamiento con corrientes eléctricas', 'Especializado', 40.00, true),
(5, 'Punción Seca', 'Técnica para puntos gatillo miofasciales', 'Especializado', 55.00, true),
(6, 'Terapia Manual', 'Tratamiento manual de lesiones musculoesqueléticas', 'Terapéutico', 45.00, true);

-- TRATAMIENTOS
INSERT INTO tratamiento (oid, name, description, duration, price) VALUES
(1, 'Sesión Fisioterapia Estándar', 'Sesión de 45 minutos de fisioterapia general', 45, 45.00),
(2, 'Sesión Intensiva', 'Sesión de 60 minutos con técnicas combinadas', 60, 60.00),
(3, 'Valoración Inicial', 'Primera sesión con diagnóstico y plan de tratamiento', 60, 50.00),
(4, 'Sesión Electroterapia', 'Aplicación de electroterapia 30 minutos', 30, 35.00);

-- GRUPOS (ROLES)
INSERT INTO "group" (oid, groupname, module_oid) VALUES
(1, 'Administrador', NULL),
(2, 'Fisioterapeuta', NULL),
(3, 'Cliente', NULL);

-- MÓDULOS
INSERT INTO module (oid, moduleid, modulename) VALUES
(1, 'admin', 'Administración'),
(2, 'fisio', 'Área Fisioterapeuta'),
(3, 'cliente', 'Área Cliente'),
(4, 'publico', 'Sitio Público');

-- USUARIOS
INSERT INTO "user" (oid, username, password, email, group_oid) VALUES
(1, 'admin', 'admin', 'admin@fisioclinica.com', 1),
(2, 'fisio1', 'fisio1', 'maria.gomez@fisioclinica.com', 2),
(3, 'fisio2', 'fisio2', 'juan.perez@fisioclinica.com', 2),
(4, 'cliente1', 'cliente1', 'pedro.martinez@email.com', 3),
(5, 'cliente2', 'cliente2', 'ana.lopez@email.com', 3);

-- FISIOTERAPEUTAS
INSERT INTO fisioterapeuta (oid, firstname, lastname, specialty, phone, email, licensenumber) VALUES
(2, 'María', 'Gómez', 'Fisioterapia Deportiva', '666111222', 'maria.gomez@fisioclinica.com', 'FIS-001'),
(3, 'Juan', 'Pérez', 'Rehabilitación', '666333444', 'juan.perez@fisioclinica.com', 'FIS-002');

-- PACIENTES
INSERT INTO paciente (oid, firstname, lastname, phone, email, address, birthdate, medicalhistory) VALUES
(4, 'Pedro', 'Martínez', '655111222', 'pedro.martinez@email.com', 'Calle Mayor 10, Alicante', '1985-03-15', 'Sin alergias conocidas'),
(5, 'Ana', 'López', '655333444', 'ana.lopez@email.com', 'Avenida de la Libertad 25, Alicante', '1990-07-22', 'Lesión de rodilla previa');

-- CITAS
INSERT INTO cita (oid, appointmentdate, appointmenttime, status, notes, duration, paciente_oid, fisioterapeuta_oid) VALUES
(1, '2025-11-20', '10:00:00', 'confirmada', 'Primera sesión valoración', 60, 4, 2),
(2, '2025-11-20', '11:30:00', 'confirmada', 'Seguimiento lesión rodilla', 45, 5, 3),
(3, '2025-11-22', '09:00:00', 'pendiente', 'Sesión rehabilitación', 45, 4, 2);

-- FACTURAS
INSERT INTO factura (oid, invoicenumber, invoicedate, totalamount, paymentstatus, paymentdate, paciente_oid) VALUES
(1, 'FAC-2025-001', '2025-11-18', 50.00, 'pagada', '2025-11-18', 4),
(2, 'FAC-2025-002', '2025-11-18', 45.00, 'pendiente', NULL, 5);

-- RELACIONES CITA-TRATAMIENTO
INSERT INTO cita_tratamiento (cita_oid, tratamiento_oid) VALUES
(1, 3),
(2, 1),
(3, 1);

-- RELACIONES USER-GROUP
INSERT INTO user_group (user_oid, group_oid) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 3);

-- RELACIONES GROUP-MODULE
INSERT INTO group_module (group_oid, module_oid) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(2, 4),
(3, 3),
(3, 4);
