-- ========================================-- ========================================

-- Script de poblacion de base de datos-- Script de poblacion de base de datos

-- Sin tildes ni caracteres especiales-- Sin tildes ni caracteres especiales

-- Fecha: 19/11/2025-- Fecha: 19/11/2025

-- ========================================-- ========================================



-- Limpieza de datos existentes (opcional, comentar si no se desea)-- Limpieza de datos existentes (opcional, comentar si no se desea)

-- DELETE FROM "public"."cita_tratamiento";-- DELETE FROM "public"."cita_tratamiento";

-- DELETE FROM "public"."group_module";-- DELETE FROM "public"."group_module";

-- DELETE FROM "public"."user_group";-- DELETE FROM "public"."user_group";

-- DELETE FROM "public"."factura";-- DELETE FROM "public"."factura";

-- DELETE FROM "public"."servicio";-- DELETE FROM "public"."servicio";

-- DELETE FROM "public"."cita";-- DELETE FROM "public"."cita";

-- DELETE FROM "public"."tratamiento";-- DELETE FROM "public"."tratamiento";

-- DELETE FROM "public"."fisioterapeuta";-- DELETE FROM "public"."fisioterapeuta";

-- DELETE FROM "public"."paciente";-- DELETE FROM "public"."paciente";

-- DELETE FROM "public"."user";-- DELETE FROM "public"."user";

-- DELETE FROM "public"."group";-- DELETE FROM "public"."group";

-- DELETE FROM "public"."module";-- DELETE FROM "public"."module";



-- ========================================-- ========================================

-- MODULOS-- MODULOS

-- ========================================-- ========================================

INSERT INTO "public"."module" ("oid", "moduleid", "modulename") VALUESINSERT INTO "public"."module" ("oid", "moduleid", "modulename") VALUES

(1, 'MOD_ADMIN', 'Administracion'),(1, 'MOD_ADMIN', 'Administracion'),

(2, 'MOD_PACIENTES', 'Gestion de Pacientes'),(2, 'MOD_PACIENTES', 'Gestion de Pacientes'),

(3, 'MOD_CITAS', 'Gestion de Citas'),(3, 'MOD_CITAS', 'Gestion de Citas'),

(4, 'MOD_FACTURAS', 'Facturacion'),(4, 'MOD_FACTURAS', 'Facturacion'),

(5, 'MOD_INFORMES', 'Informes y Reportes');(5, 'MOD_INFORMES', 'Informes y Reportes');



-- ========================================-- ========================================

-- GRUPOS-- GRUPOS

-- ========================================-- ========================================

INSERT INTO "public"."group" ("oid", "groupname", "module_oid") VALUESINSERT INTO "public"."group" ("oid", "groupname", "module_oid") VALUES

(1, 'Administradores', 1),(1, 'Administradores', 1),

(2, 'Fisioterapeutas', 3),(2, 'Fisioterapeutas', 3),

(3, 'Recepcionistas', 2),(3, 'Recepcionistas', 2),

(4, 'Pacientes', NULL);(4, 'Pacientes', NULL);



-- ========================================-- ========================================

-- RELACION GRUPO-MODULO (many-to-many)-- RELACION GRUPO-MODULO (many-to-many)

-- ========================================-- ========================================

INSERT INTO "public"."group_module" ("group_oid", "module_oid") VALUESINSERT INTO "public"."group_module" ("group_oid", "module_oid") VALUES

(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),  -- Administradores tienen acceso a todo(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),  -- Administradores tienen acceso a todo

(2, 2), (2, 3), (2, 4),                   -- Fisioterapeutas gestionan pacientes, citas y facturas(2, 2), (2, 3), (2, 4),                   -- Fisioterapeutas gestionan pacientes, citas y facturas

(3, 2), (3, 3),                           -- Recepcionistas gestionan pacientes y citas(3, 2), (3, 3),                           -- Recepcionistas gestionan pacientes y citas

(4, 3);                                   -- Pacientes solo ven sus citas(4, 3);                                   -- Pacientes solo ven sus citas



-- ========================================-- ========================================

-- USUARIOS-- USUARIOS

-- ========================================-- ========================================

INSERT INTO "public"."user" ("oid", "username", "password", "email", "group_oid") VALUESINSERT INTO "public"."user" ("oid", "username", "password", "email", "group_oid") VALUES

(1, 'admin', 'admin123', 'admin@clinica.com', 1),(1, 'admin', 'admin123', 'admin@clinica.com', 1),

(2, 'mgarcia', 'fisio123', 'mgarcia@clinica.com', 2),(2, 'mgarcia', 'fisio123', 'mgarcia@clinica.com', 2),

(3, 'alopez', 'fisio123', 'alopez@clinica.com', 2),(3, 'alopez', 'fisio123', 'alopez@clinica.com', 2),

(4, 'cmartinez', 'fisio123', 'cmartinez@clinica.com', 2),(4, 'cmartinez', 'fisio123', 'cmartinez@clinica.com', 2),

(5, 'recepcion1', 'recep123', 'recepcion@clinica.com', 3),(5, 'recepcion1', 'recep123', 'recepcion@clinica.com', 3),

(6, 'jperez', 'paciente123', 'jperez@email.com', 4),(6, 'jperez', 'paciente123', 'jperez@email.com', 4),

(7, 'lgonzalez', 'paciente123', 'lgonzalez@email.com', 4),(7, 'lgonzalez', 'paciente123', 'lgonzalez@email.com', 4),

(8, 'mrodriguez', 'paciente123', 'mrodriguez@email.com', 4),(8, 'mrodriguez', 'paciente123', 'mrodriguez@email.com', 4),

(9, 'afernandez', 'paciente123', 'afernandez@email.com', 4),(9, 'afernandez', 'paciente123', 'afernandez@email.com', 4),

(10, 'psanchez', 'paciente123', 'psanchez@email.com', 4),(10, 'psanchez', 'paciente123', 'psanchez@email.com', 4),

(11, 'rdiaz', 'paciente123', 'rdiaz@email.com', 4),(11, 'rdiaz', 'paciente123', 'rdiaz@email.com', 4),

(12, 'smoreno', 'paciente123', 'smoreno@email.com', 4),(12, 'smoreno', 'paciente123', 'smoreno@email.com', 4),

(13, 'tjimenez', 'paciente123', 'tjimenez@email.com', 4),(13, 'tjimenez', 'paciente123', 'tjimenez@email.com', 4),

(14, 'vruiz', 'paciente123', 'vruiz@email.com', 4),(14, 'vruiz', 'paciente123', 'vruiz@email.com', 4),

(15, 'nhernandez', 'paciente123', 'nhernandez@email.com', 4);(15, 'nhernandez', 'paciente123', 'nhernandez@email.com', 4);



-- ========================================-- ========================================

-- RELACION USUARIO-GRUPO (many-to-many)-- RELACION USUARIO-GRUPO (many-to-many)

-- ========================================-- ========================================

INSERT INTO "public"."user_group" ("user_oid", "group_oid") VALUESINSERT INTO "public"."user_group" ("user_oid", "group_oid") VALUES

(1, 1),    -- admin es Administrador(1, 1),    -- admin es Administrador

(2, 2),    -- mgarcia es Fisioterapeuta(2, 2),    -- mgarcia es Fisioterapeuta

(3, 2),    -- alopez es Fisioterapeuta(3, 2),    -- alopez es Fisioterapeuta

(4, 2),    -- cmartinez es Fisioterapeuta(4, 2),    -- cmartinez es Fisioterapeuta

(5, 3),    -- recepcion1 es Recepcionista(5, 3),    -- recepcion1 es Recepcionista

(6, 4), (7, 4), (8, 4), (9, 4), (10, 4),  -- Pacientes(6, 4), (7, 4), (8, 4), (9, 4), (10, 4),  -- Pacientes

(11, 4), (12, 4), (13, 4), (14, 4), (15, 4);(11, 4), (12, 4), (13, 4), (14, 4), (15, 4);



-- ========================================-- ========================================

-- FISIOTERAPEUTAS-- FISIOTERAPEUTAS

-- ========================================-- ========================================

INSERT INTO "public"."fisioterapeuta" ("oid", "firstname", "lastname", "specialty", "phone", "email", "licensenumber", "user_oid") VALUESINSERT INTO "public"."fisioterapeuta" ("oid", "firstname", "lastname", "specialty", "phone", "email", "licensenumber", "user_oid") VALUES

(1, 'Maria', 'Garcia', 'Traumatologia', '+34912345001', 'mgarcia@clinica.com', 'LIC-FT-001', 2),(1, 'Maria', 'Garcia', 'Traumatologia', '+34912345001', 'mgarcia@clinica.com', 'LIC-FT-001', 2),

(2, 'Alberto', 'Lopez', 'Rehabilitacion Deportiva', '+34912345002', 'alopez@clinica.com', 'LIC-FT-002', 3),(2, 'Alberto', 'Lopez', 'Rehabilitacion Deportiva', '+34912345002', 'alopez@clinica.com', 'LIC-FT-002', 3),

(3, 'Carmen', 'Martinez', 'Neurologia', '+34912345003', 'cmartinez@clinica.com', 'LIC-FT-003', 4);(3, 'Carmen', 'Martinez', 'Neurologia', '+34912345003', 'cmartinez@clinica.com', 'LIC-FT-003', 4);



-- ========================================-- ========================================

-- PACIENTES-- PACIENTES

-- ========================================-- ========================================

INSERT INTO "public"."paciente" ("oid", "firstname", "lastname", "phone", "email", "address", "birthdate", "medicalhistory", "user_oid") VALUESINSERT INTO "public"."paciente" ("oid", "firstname", "lastname", "phone", "email", "address", "birthdate", "medicalhistory", "user_oid") VALUES

(1, 'Juan', 'Perez', '+34611111111', 'jperez@email.com', 'Calle Mayor 10, Madrid', '1985-03-15', 'Lesion de rodilla en 2020. Operacion de menisco. Sin alergias conocidas.', 6),(1, 'Juan', 'Perez', '+34611111111', 'jperez@email.com', 'Calle Mayor 10, Madrid', '1985-03-15', 'Lesion de rodilla en 2020. Operacion de menisco. Sin alergias conocidas.', 6),

(2, 'Laura', 'Gonzalez', '+34622222222', 'lgonzalez@email.com', 'Avenida Libertad 25, Barcelona', '1990-07-22', 'Dolor cronico lumbar. Hernia discal L4-L5. Tratamiento conservador.', 7),(2, 'Laura', 'Gonzalez', '+34622222222', 'lgonzalez@email.com', 'Avenida Libertad 25, Barcelona', '1990-07-22', 'Dolor cronico lumbar. Hernia discal L4-L5. Tratamiento conservador.', 7),

(3, 'Miguel', 'Rodriguez', '+34633333333', 'mrodriguez@email.com', 'Plaza Espana 5, Valencia', '1978-11-08', 'Fractura de tobillo en 2019. Recuperacion completa. Practica running.', 8),(3, 'Miguel', 'Rodriguez', '+34633333333', 'mrodriguez@email.com', 'Plaza Espana 5, Valencia', '1978-11-08', 'Fractura de tobillo en 2019. Recuperacion completa. Practica running.', 8),

(4, 'Ana', 'Fernandez', '+34644444444', 'afernandez@email.com', 'Calle Sol 33, Sevilla', '1995-01-30', 'Esguince cervical por accidente de trafico. En tratamiento desde hace 2 meses.', 9),(4, 'Ana', 'Fernandez', '+34644444444', 'afernandez@email.com', 'Calle Sol 33, Sevilla', '1995-01-30', 'Esguince cervical por accidente de trafico. En tratamiento desde hace 2 meses.', 9),

(5, 'Pedro', 'Sanchez', '+34655555555', 'psanchez@email.com', 'Calle Luna 18, Bilbao', '1982-05-12', 'Tendinitis rotuliana bilateral. Deportista amateur. Sin cirugias previas.', 10),(5, 'Pedro', 'Sanchez', '+34655555555', 'psanchez@email.com', 'Calle Luna 18, Bilbao', '1982-05-12', 'Tendinitis rotuliana bilateral. Deportista amateur. Sin cirugias previas.', 10),

(6, 'Rosa', 'Diaz', '+34666666666', 'rdiaz@email.com', 'Avenida Paz 42, Malaga', '1988-09-25', 'Fibromialgia diagnosticada en 2018. Tratamiento multidisciplinar.', 11),(6, 'Rosa', 'Diaz', '+34666666666', 'rdiaz@email.com', 'Avenida Paz 42, Malaga', '1988-09-25', 'Fibromialgia diagnosticada en 2018. Tratamiento multidisciplinar.', 11),

(7, 'Sofia', 'Moreno', '+34677777777', 'smoreno@email.com', 'Calle Norte 7, Zaragoza', '1992-12-03', 'Paralisis facial periferica. Recuperacion al 90%. Requiere seguimiento.', 12),(7, 'Sofia', 'Moreno', '+34677777777', 'smoreno@email.com', 'Calle Norte 7, Zaragoza', '1992-12-03', 'Paralisis facial periferica. Recuperacion al 90%. Requiere seguimiento.', 12),

(8, 'Tomas', 'Jimenez', '+34688888888', 'tjimenez@email.com', 'Plaza Mayor 12, Murcia', '1975-04-17', 'Artrosis de cadera. Pendiente de valoracion quirurgica. Dolor moderado.', 13),(8, 'Tomas', 'Jimenez', '+34688888888', 'tjimenez@email.com', 'Plaza Mayor 12, Murcia', '1975-04-17', 'Artrosis de cadera. Pendiente de valoracion quirurgica. Dolor moderado.', 13),

(9, 'Victor', 'Ruiz', '+34699999999', 'vruiz@email.com', 'Calle Central 20, Granada', '1987-08-28', 'Rotura fibrilar gemelo derecho. Deportista profesional. Alta exigencia.', 14),(9, 'Victor', 'Ruiz', '+34699999999', 'vruiz@email.com', 'Calle Central 20, Granada', '1987-08-28', 'Rotura fibrilar gemelo derecho. Deportista profesional. Alta exigencia.', 14),

(10, 'Natalia', 'Hernandez', '+34600000000', 'nhernandez@email.com', 'Avenida Sur 15, Cordoba', '1993-06-14', 'Escoliosis lumbar leve. Tratamiento postural. Sin dolor significativo.', 15);(10, 'Natalia', 'Hernandez', '+34600000000', 'nhernandez@email.com', 'Avenida Sur 15, Cordoba', '1993-06-14', 'Escoliosis lumbar leve. Tratamiento postural. Sin dolor significativo.', 15);



-- ========================================-- ========================================

-- TRATAMIENTOS-- TRATAMIENTOS

-- ========================================-- ========================================

INSERT INTO "public"."tratamiento" ("oid", "name", "description", "duration", "price") VALUESINSERT INTO "public"."tratamiento" ("oid", "name", "description", "duration", "price") VALUES

(1, 'Masaje Terapeutico', 'Masaje de tejidos profundos para alivio del dolor muscular y mejora de la movilidad', 60, 45.00),(1, 'Masaje Terapeutico', 'Masaje de tejidos profundos para alivio del dolor muscular y mejora de la movilidad', 60, 45.00),

(2, 'Electroterapia', 'Aplicacion de corrientes electricas para reducir dolor e inflamacion', 30, 25.00),(2, 'Electroterapia', 'Aplicacion de corrientes electricas para reducir dolor e inflamacion', 30, 25.00),

(3, 'Ultrasonidos', 'Terapia con ondas ultrasonicas para tratamiento de lesiones de tejidos blandos', 20, 20.00),(3, 'Ultrasonidos', 'Terapia con ondas ultrasonicas para tratamiento de lesiones de tejidos blandos', 20, 20.00),

(4, 'Ejercicios Terapeuticos', 'Programa personalizado de ejercicios de fortalecimiento y estiramiento', 45, 35.00),(4, 'Ejercicios Terapeuticos', 'Programa personalizado de ejercicios de fortalecimiento y estiramiento', 45, 35.00),

(5, 'Puncion Seca', 'Tecnica invasiva para tratamiento de puntos gatillo miofasciales', 30, 40.00),(5, 'Puncion Seca', 'Tecnica invasiva para tratamiento de puntos gatillo miofasciales', 30, 40.00),

(6, 'Terapia Manual', 'Manipulaciones articulares y movilizaciones para mejorar el rango de movimiento', 45, 50.00),(6, 'Terapia Manual', 'Manipulaciones articulares y movilizaciones para mejorar el rango de movimiento', 45, 50.00),

(7, 'Drenaje Linfatico', 'Masaje especializado para reducir edemas y mejorar circulacion linfatica', 50, 55.00),(7, 'Drenaje Linfatico', 'Masaje especializado para reducir edemas y mejorar circulacion linfatica', 50, 55.00),

(8, 'Kinesiotaping', 'Aplicacion de vendaje neuromuscular para soporte y estabilizacion', 15, 15.00),(8, 'Kinesiotaping', 'Aplicacion de vendaje neuromuscular para soporte y estabilizacion', 15, 15.00),

(9, 'Reeducacion Postural', 'Correccion de patrones posturales incorrectos mediante ejercicios especificos', 60, 40.00),(9, 'Reeducacion Postural', 'Correccion de patrones posturales incorrectos mediante ejercicios especificos', 60, 40.00),

(10, 'Magnetoterapia', 'Terapia mediante campos magneticos para acelerar procesos de curacion', 30, 30.00);(10, 'Magnetoterapia', 'Terapia mediante campos magneticos para acelerar procesos de curacion', 30, 30.00);



-- ========================================-- ========================================

-- CITAS-- CITAS

-- ========================================-- ========================================

INSERT INTO "public"."cita" ("oid", "appointmentdate", "appointmenttime", "status", "notes", "duration", "paciente_oid", "fisioterapeuta_oid") VALUESINSERT INTO "public"."cita" ("oid", "appointmentdate", "appointmenttime", "status", "notes", "duration", "paciente_oid", "fisioterapeuta_oid") VALUES

-- Citas pasadas-- Citas pasadas

(1, '2025-11-10', '09:00:00', 'Completada', 'Primera sesion. Evaluacion inicial de rodilla. Paciente responde bien.', 60, 1, 1),(1, '2025-11-10', '09:00:00', 'Completada', 'Primera sesion. Evaluacion inicial de rodilla. Paciente responde bien.', 60, 1, 1),

(2, '2025-11-10', '10:30:00', 'Completada', 'Tratamiento de dolor lumbar. Aplicacion de electroterapia y masaje.', 45, 2, 2),(2, '2025-11-10', '10:30:00', 'Completada', 'Tratamiento de dolor lumbar. Aplicacion de electroterapia y masaje.', 45, 2, 2),

(3, '2025-11-11', '09:00:00', 'Completada', 'Sesion de fortalecimiento de tobillo. Ejercicios propioceptivos.', 45, 3, 1),(3, '2025-11-11', '09:00:00', 'Completada', 'Sesion de fortalecimiento de tobillo. Ejercicios propioceptivos.', 45, 3, 1),

(4, '2025-11-11', '11:00:00', 'Cancelada', 'Paciente cancelo por motivos personales. Reprogramar.', 30, 4, 3),(4, '2025-11-11', '11:00:00', 'Cancelada', 'Paciente cancelo por motivos personales. Reprogramar.', 30, 4, 3),

(5, '2025-11-12', '16:00:00', 'Completada', 'Tratamiento cervical. Terapia manual y ultrasonidos. Mejoria notable.', 45, 4, 3),(5, '2025-11-12', '16:00:00', 'Completada', 'Tratamiento cervical. Terapia manual y ultrasonidos. Mejoria notable.', 45, 4, 3),

(6, '2025-11-13', '09:30:00', 'Completada', 'Sesion de puncion seca en gemelos. Paciente tolera bien la tecnica.', 30, 5, 2),(6, '2025-11-13', '09:30:00', 'Completada', 'Sesion de puncion seca en gemelos. Paciente tolera bien la tecnica.', 30, 5, 2),

(7, '2025-11-13', '11:00:00', 'Completada', 'Drenaje linfatico y masaje relajante. Reduccion de sintomas.', 50, 6, 1),(7, '2025-11-13', '11:00:00', 'Completada', 'Drenaje linfatico y masaje relajante. Reduccion de sintomas.', 50, 6, 1),

(8, '2025-11-14', '10:00:00', 'Completada', 'Reeducacion facial. Ejercicios neuromusculares. Progreso satisfactorio.', 45, 7, 3),(8, '2025-11-14', '10:00:00', 'Completada', 'Reeducacion facial. Ejercicios neuromusculares. Progreso satisfactorio.', 45, 7, 3),

(9, '2025-11-14', '15:30:00', 'Completada', 'Evaluacion de cadera. Recomendacion de cirugia. Derivar a traumatologo.', 60, 8, 1),(9, '2025-11-14', '15:30:00', 'Completada', 'Evaluacion de cadera. Recomendacion de cirugia. Derivar a traumatologo.', 60, 8, 1),

(10, '2025-11-15', '09:00:00', 'Completada', 'Tratamiento de rotura fibrilar. Vendaje neuromuscular aplicado.', 30, 9, 2),(10, '2025-11-15', '09:00:00', 'Completada', 'Tratamiento de rotura fibrilar. Vendaje neuromuscular aplicado.', 30, 9, 2),



-- Citas de hoy (19/11/2025)-- Citas de hoy (19/11/2025)

(11, '2025-11-19', '09:00:00', 'Confirmada', 'Segunda sesion de rodilla. Continuar con fortalecimiento.', 60, 1, 1),(11, '2025-11-19', '09:00:00', 'Confirmada', 'Segunda sesion de rodilla. Continuar con fortalecimiento.', 60, 1, 1),

(12, '2025-11-19', '10:30:00', 'Confirmada', 'Seguimiento lumbar. Valorar evolucion del dolor.', 45, 2, 2),(12, '2025-11-19', '10:30:00', 'Confirmada', 'Seguimiento lumbar. Valorar evolucion del dolor.', 45, 2, 2),

(13, '2025-11-19', '12:00:00', 'Pendiente', 'Primera cita. Evaluacion de escoliosis y postura.', 60, 10, 3),(13, '2025-11-19', '12:00:00', 'Pendiente', 'Primera cita. Evaluacion de escoliosis y postura.', 60, 10, 3),

(14, '2025-11-19', '16:00:00', 'Confirmada', 'Sesion de ejercicios terapeuticos y masaje.', 45, 5, 2),(14, '2025-11-19', '16:00:00', 'Confirmada', 'Sesion de ejercicios terapeuticos y masaje.', 45, 5, 2),

(15, '2025-11-19', '17:30:00', 'Pendiente', 'Control de evolucion. Revisar programa de ejercicios.', 30, 6, 1),(15, '2025-11-19', '17:30:00', 'Pendiente', 'Control de evolucion. Revisar programa de ejercicios.', 30, 6, 1),



-- Citas futuras-- Citas futuras

(16, '2025-11-20', '09:00:00', 'Confirmada', 'Tercera sesion. Evaluacion de progreso y ajuste de tratamiento.', 60, 1, 1),(16, '2025-11-20', '09:00:00', 'Confirmada', 'Tercera sesion. Evaluacion de progreso y ajuste de tratamiento.', 60, 1, 1),

(17, '2025-11-20', '11:00:00', 'Confirmada', 'Continuacion de tratamiento cervical. Posible alta medica.', 45, 4, 3),(17, '2025-11-20', '11:00:00', 'Confirmada', 'Continuacion de tratamiento cervical. Posible alta medica.', 45, 4, 3),

(18, '2025-11-21', '10:00:00', 'Confirmada', 'Sesion de fortalecimiento muscular. Aumentar intensidad.', 45, 3, 1),(18, '2025-11-21', '10:00:00', 'Confirmada', 'Sesion de fortalecimiento muscular. Aumentar intensidad.', 45, 3, 1),

(19, '2025-11-21', '16:30:00', 'Confirmada', 'Tratamiento de fibromialgia. Terapia combinada.', 60, 6, 2),(19, '2025-11-21', '16:30:00', 'Confirmada', 'Tratamiento de fibromialgia. Terapia combinada.', 60, 6, 2),

(20, '2025-11-22', '09:30:00', 'Confirmada', 'Seguimiento de paralisis facial. Ultima sesion programada.', 45, 7, 3),(20, '2025-11-22', '09:30:00', 'Confirmada', 'Seguimiento de paralisis facial. Ultima sesion programada.', 45, 7, 3),

(21, '2025-11-25', '10:00:00', 'Pendiente', 'Evaluacion pre-quirurgica de cadera. Informe para cirujano.', 45, 8, 1),(21, '2025-11-25', '10:00:00', 'Pendiente', 'Evaluacion pre-quirurgica de cadera. Informe para cirujano.', 45, 8, 1),

(22, '2025-11-25', '15:00:00', 'Pendiente', 'Tratamiento deportivo. Preparacion para competicion.', 60, 9, 2),(22, '2025-11-25', '15:00:00', 'Pendiente', 'Tratamiento deportivo. Preparacion para competicion.', 60, 9, 2),

(23, '2025-11-26', '09:00:00', 'Pendiente', 'Segunda sesion de escoliosis. Reeducacion postural.', 60, 10, 3),(23, '2025-11-26', '09:00:00', 'Pendiente', 'Segunda sesion de escoliosis. Reeducacion postural.', 60, 10, 3),

(24, '2025-11-27', '11:30:00', 'Pendiente', 'Cuarta sesion de rodilla. Valorar alta deportiva.', 45, 1, 1),(24, '2025-11-27', '11:30:00', 'Pendiente', 'Cuarta sesion de rodilla. Valorar alta deportiva.', 45, 1, 1),

(25, '2025-11-28', '16:00:00', 'Pendiente', 'Sesion de mantenimiento lumbar. Control mensual.', 45, 2, 2);(25, '2025-11-28', '16:00:00', 'Pendiente', 'Sesion de mantenimiento lumbar. Control mensual.', 45, 2, 2);



-- ========================================-- ========================================

-- RELACION CITA-TRATAMIENTO (many-to-many)-- RELACION CITA-TRATAMIENTO (many-to-many)

-- ========================================-- ========================================

INSERT INTO "public"."cita_tratamiento" ("cita_oid", "tratamiento_oid") VALUESINSERT INTO "public"."cita_tratamiento" ("cita_oid", "tratamiento_oid") VALUES

-- Citas pasadas-- Citas pasadas

(1, 1), (1, 4),              -- Masaje + Ejercicios(1, 1), (1, 4),              -- Masaje + Ejercicios

(2, 2), (2, 1),              -- Electroterapia + Masaje(2, 2), (2, 1),              -- Electroterapia + Masaje

(3, 4), (3, 8),              -- Ejercicios + Kinesiotaping(3, 4), (3, 8),              -- Ejercicios + Kinesiotaping

(5, 6), (5, 3),              -- Terapia Manual + Ultrasonidos(5, 6), (5, 3),              -- Terapia Manual + Ultrasonidos

(6, 5),                      -- Puncion Seca(6, 5),                      -- Puncion Seca

(7, 7), (7, 1),              -- Drenaje + Masaje(7, 7), (7, 1),              -- Drenaje + Masaje

(8, 4), (8, 6),              -- Ejercicios + Terapia Manual(8, 4), (8, 6),              -- Ejercicios + Terapia Manual

(9, 1), (9, 6),              -- Masaje + Terapia Manual(9, 1), (9, 6),              -- Masaje + Terapia Manual

(10, 8), (10, 1),            -- Kinesiotaping + Masaje(10, 8), (10, 1),            -- Kinesiotaping + Masaje



-- Citas de hoy-- Citas de hoy

(11, 1), (11, 4), (11, 8),   -- Masaje + Ejercicios + Kinesiotaping(11, 1), (11, 4), (11, 8),   -- Masaje + Ejercicios + Kinesiotaping

(12, 2), (12, 10),           -- Electroterapia + Magnetoterapia(12, 2), (12, 10),           -- Electroterapia + Magnetoterapia

(13, 9), (13, 4),            -- Reeducacion Postural + Ejercicios(13, 9), (13, 4),            -- Reeducacion Postural + Ejercicios

(14, 1), (14, 4),            -- Masaje + Ejercicios(14, 1), (14, 4),            -- Masaje + Ejercicios

(15, 1), (15, 7),            -- Masaje + Drenaje(15, 1), (15, 7),            -- Masaje + Drenaje



-- Citas futuras-- Citas futuras

(16, 4), (16, 6),            -- Ejercicios + Terapia Manual(16, 4), (16, 6),            -- Ejercicios + Terapia Manual

(17, 6), (17, 3),            -- Terapia Manual + Ultrasonidos(17, 6), (17, 3),            -- Terapia Manual + Ultrasonidos

(18, 4), (18, 1),            -- Ejercicios + Masaje(18, 4), (18, 1),            -- Ejercicios + Masaje

(19, 1), (19, 7), (19, 10),  -- Masaje + Drenaje + Magnetoterapia(19, 1), (19, 7), (19, 10),  -- Masaje + Drenaje + Magnetoterapia

(20, 4), (20, 6),            -- Ejercicios + Terapia Manual(20, 4), (20, 6),            -- Ejercicios + Terapia Manual

(21, 1), (21, 6),            -- Masaje + Terapia Manual(21, 1), (21, 6),            -- Masaje + Terapia Manual

(22, 5), (22, 1), (22, 4),   -- Puncion Seca + Masaje + Ejercicios(22, 5), (22, 1), (22, 4),   -- Puncion Seca + Masaje + Ejercicios

(23, 9), (23, 4),            -- Reeducacion Postural + Ejercicios(23, 9), (23, 4),            -- Reeducacion Postural + Ejercicios

(24, 4), (24, 1),            -- Ejercicios + Masaje(24, 4), (24, 1),            -- Ejercicios + Masaje

(25, 2), (25, 1);            -- Electroterapia + Masaje(25, 2), (25, 1);            -- Electroterapia + Masaje



-- ========================================-- ========================================

-- FACTURAS-- FACTURAS

-- ========================================-- ========================================

INSERT INTO "public"."factura" ("oid", "invoicenumber", "invoicedate", "totalamount", "paymentstatus", "paymentdate", "paciente_oid") VALUESINSERT INTO "public"."factura" ("oid", "invoicenumber", "invoicedate", "totalamount", "paymentstatus", "paymentdate", "paciente_oid") VALUES

(1, 'FAC-2025-001', '2025-11-10', 80.00, 'Pagada', '2025-11-10', 1),(1, 'FAC-2025-001', '2025-11-10', 80.00, 'Pagada', '2025-11-10', 1),

(2, 'FAC-2025-002', '2025-11-10', 60.00, 'Pagada', '2025-11-10', 2),(2, 'FAC-2025-002', '2025-11-10', 60.00, 'Pagada', '2025-11-10', 2),

(3, 'FAC-2025-003', '2025-11-11', 60.00, 'Pagada', '2025-11-11', 3),(3, 'FAC-2025-003', '2025-11-11', 60.00, 'Pagada', '2025-11-11', 3),

(4, 'FAC-2025-004', '2025-11-12', 70.00, 'Pagada', '2025-11-12', 4),(4, 'FAC-2025-004', '2025-11-12', 70.00, 'Pagada', '2025-11-12', 4),

(5, 'FAC-2025-005', '2025-11-13', 40.00, 'Pagada', '2025-11-13', 5),(5, 'FAC-2025-005', '2025-11-13', 40.00, 'Pagada', '2025-11-13', 5),

(6, 'FAC-2025-006', '2025-11-13', 100.00, 'Pagada', '2025-11-15', 6),(6, 'FAC-2025-006', '2025-11-13', 100.00, 'Pagada', '2025-11-15', 6),

(7, 'FAC-2025-007', '2025-11-14', 85.00, 'Pagada', '2025-11-14', 7),(7, 'FAC-2025-007', '2025-11-14', 85.00, 'Pagada', '2025-11-14', 7),

(8, 'FAC-2025-008', '2025-11-14', 95.00, 'Pendiente', NULL, 8),(8, 'FAC-2025-008', '2025-11-14', 95.00, 'Pendiente', NULL, 8),

(9, 'FAC-2025-009', '2025-11-15', 45.00, 'Pagada', '2025-11-15', 9),(9, 'FAC-2025-009', '2025-11-15', 45.00, 'Pagada', '2025-11-15', 9),

(10, 'FAC-2025-010', '2025-11-19', 120.00, 'Pendiente', NULL, 1),(10, 'FAC-2025-010', '2025-11-19', 120.00, 'Pendiente', NULL, 1),

(11, 'FAC-2025-011', '2025-11-19', 75.00, 'Pendiente', NULL, 2),(11, 'FAC-2025-011', '2025-11-19', 75.00, 'Pendiente', NULL, 2),

(12, 'FAC-2025-012', '2025-11-19', 75.00, 'Pendiente', NULL, 10),(12, 'FAC-2025-012', '2025-11-19', 75.00, 'Pendiente', NULL, 10),

(13, 'FAC-2025-013', '2025-11-19', 80.00, 'Pendiente', NULL, 5),(13, 'FAC-2025-013', '2025-11-19', 80.00, 'Pendiente', NULL, 5),

(14, 'FAC-2025-014', '2025-11-19', 100.00, 'Pendiente', NULL, 6);(14, 'FAC-2025-014', '2025-11-19', 100.00, 'Pendiente', NULL, 6);



-- ========================================-- ========================================

-- SERVICIOS-- SERVICIOS

-- ========================================-- ========================================

INSERT INTO "public"."servicio" ("oid", "name", "description", "category", "price", "active") VALUESINSERT INTO "public"."servicio" ("oid", "name", "description", "category", "price", "active") VALUES

(1, 'Consulta Inicial', 'Primera consulta con evaluacion completa y diagnostico fisioterapeutico', 'Evaluacion', 50.00, true),(1, 'Consulta Inicial', 'Primera consulta con evaluacion completa y diagnostico fisioterapeutico', 'Evaluacion', 50.00, true),

(2, 'Sesion Individual', 'Sesion de fisioterapia individual de 45 minutos', 'Tratamiento', 45.00, true),(2, 'Sesion Individual', 'Sesion de fisioterapia individual de 45 minutos', 'Tratamiento', 45.00, true),

(3, 'Sesion Domiciliaria', 'Tratamiento de fisioterapia en el domicilio del paciente', 'Tratamiento', 70.00, true),(3, 'Sesion Domiciliaria', 'Tratamiento de fisioterapia en el domicilio del paciente', 'Tratamiento', 70.00, true),

(4, 'Bono 5 Sesiones', 'Pack de 5 sesiones individuales con descuento del 10%', 'Bonos', 202.50, true),(4, 'Bono 5 Sesiones', 'Pack de 5 sesiones individuales con descuento del 10%', 'Bonos', 202.50, true),

(5, 'Bono 10 Sesiones', 'Pack de 10 sesiones individuales con descuento del 15%', 'Bonos', 382.50, true),(5, 'Bono 10 Sesiones', 'Pack de 10 sesiones individuales con descuento del 15%', 'Bonos', 382.50, true),

(6, 'Vendaje Funcional', 'Aplicacion de vendaje funcional o neuromuscular', 'Complementario', 15.00, true),(6, 'Vendaje Funcional', 'Aplicacion de vendaje funcional o neuromuscular', 'Complementario', 15.00, true),

(7, 'Estudio Biomecanico', 'Analisis completo de la marcha y postura con informe detallado', 'Evaluacion', 120.00, true),(7, 'Estudio Biomecanico', 'Analisis completo de la marcha y postura con informe detallado', 'Evaluacion', 120.00, true),

(8, 'Readaptacion Deportiva', 'Programa de readaptacion para deportistas (sesion)', 'Deportivo', 55.00, true),(8, 'Readaptacion Deportiva', 'Programa de readaptacion para deportistas (sesion)', 'Deportivo', 55.00, true),

(9, 'Pilates Terapeutico', 'Clase de pilates terapeutico en grupo reducido', 'Grupal', 20.00, true),(9, 'Pilates Terapeutico', 'Clase de pilates terapeutico en grupo reducido', 'Grupal', 20.00, true),

(10, 'Electroestimulacion', 'Sesion de electroestimulacion muscular (EMS)', 'Complementario', 35.00, true),(10, 'Electroestimulacion', 'Sesion de electroestimulacion muscular (EMS)', 'Complementario', 35.00, true),

(11, 'Termoterapia', 'Aplicacion de calor terapeutico (parafina, infrarrojos)', 'Complementario', 12.00, false),(11, 'Termoterapia', 'Aplicacion de calor terapeutico (parafina, infrarrojos)', 'Complementario', 12.00, false),

(12, 'Crioterapia', 'Aplicacion de frio terapeutico local o generalizado', 'Complementario', 10.00, true);(12, 'Crioterapia', 'Aplicacion de frio terapeutico local o generalizado', 'Complementario', 10.00, true);



-- ========================================-- ========================================

-- FIN DEL SCRIPT-- FIN DEL SCRIPT

-- ========================================-- ========================================



-- Resumen de registros insertados:-- Resumen de registros insertados:

-- - Modulos: 5-- - Modulos: 5

-- - Grupos: 4-- - Grupos: 4

-- - Usuarios: 15-- - Usuarios: 15

-- - Fisioterapeutas: 3-- - Fisioterapeutas: 3

-- - Pacientes: 10-- - Pacientes: 10

-- - Tratamientos: 10-- - Tratamientos: 10

-- - Citas: 25-- - Citas: 25

-- - Facturas: 14-- - Facturas: 14

-- - Servicios: 12-- - Servicios: 12

