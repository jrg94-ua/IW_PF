# Sistema Web de Gestión para Clínica de Fisioterapia

**Alumno:** Jorge Ros Gómez  
**DNI:** 20084837H  
**Asignatura:** Ingeniería Web

## 📝 Descripción del Proyecto

Sistema web para la gestión integral de una clínica de fisioterapia que optimiza la organización interna, automatiza tareas administrativas y mejora la comunicación entre diferentes tipos de usuarios.

### Objetivos Principales
- ✅ Facilitar la gestión de fisioterapeutas, clientes, citas y facturación
- ✅ Ofrecer sistema accesible desde cualquier navegador web
- ✅ Automatizar procesos administrativos y mejorar eficiencia del personal
- ✅ Proporcionar diferentes niveles de acceso según tipo de usuario
- ✅ Garantizar experiencia de usuario sencilla, clara y segura

### Tipos de Usuarios
1. **Usuario público**: Consultar información sobre clínica, servicios, ubicación y horarios
2. **Cliente**: Área privada para ver y gestionar citas, facturas y datos personales
3. **Fisioterapeuta**: Revisar agenda, ver pacientes asignados y gestionar tratamientos
4. **Administrador**: Gestión completa del sistema con permisos CRUD

---

## 📋 CHECKLIST DE TAREAS

**Fecha límite: 4 de diciembre de 2025**

### 🔹 MODELO DE DATOS (Clínica de Fisioterapia) ✅
- [x] **Paciente** - firstName, lastName, phone, email, address, birthDate, medicalHistory
- [x] **Fisioterapeuta** - firstName, lastName, specialty, phone, email, licenseNumber
- [x] **Cita** - appointmentDate, appointmentTime, status, notes, duration
- [x] **Tratamiento** - name, description, duration, price
- [x] **Factura** - invoiceNumber, invoiceDate, totalAmount, paymentStatus, paymentDate
- [x] **Servicio** - name, description, category, price, active
- [x] User, Group, Module configurados correctamente
- [x] 10 relaciones definidas entre entidades
- [x] Mapeo completo a base de datos PostgreSQL
- [x] Script SQL generado y validado

### 🔹 SITE VIEWS (3 obligatorios)
- [ ] **Site View Público** - info clínica, servicios, ubicación, horarios
- [ ] **Área Cliente** - ver/gestionar citas, facturas, datos personales
- [ ] **Área Fisioterapeuta** - agenda, pacientes asignados, tratamientos
- [ ] **Área Administrador** - gestión completa (CRUD todas las entidades)

### 🔹 COMPONENTES OBLIGATORIOS
- [ ] Implementar containers (organización de páginas)
- [ ] Implementar view components (mostrar/editar datos)
- [ ] Implementar operations (crear/modificar/borrar)
- [ ] Implementar session components (login, logout, context parameters)
- [ ] Implementar utility components (selector)

### 🔹 ESPECIFICACIÓN
- [ ] Especificar sistema en IFML dentro de WebRatio

### 🔹 MEJORAS OPCIONALES (para mejorar nota)
- [ ] Añadir derivaciones o utility components avanzados
- [ ] Implementar funcionalidades de librería WebRatio (mail, excel, etc.)
- [ ] Control flow operations, cadenas de operaciones
- [ ] Carrito de compra u otras funcionalidades avanzadas

### 🔹 DOCUMENTACIÓN Y ENTREGA
- [ ] Crear presentación PDF:
  - Slide 1: Título del trabajo y autores
  - Slide 2: Contextualización del sistema de información
  - Slide 3: Aspectos importantes a destacar
  - Slide 4: URL de YouTube con DEMO (vídeo 10min)
  - Slide 5: Conclusiones y opiniones
- [ ] Grabar video DEMO de 10 minutos y subir a YouTube
- [ ] Preparar backup de base de datos (admin/admin y user/user)
- [ ] Crear fichero ZIP para entrega en Moodle

---

## 📊 Estado Actual del Proyecto

### ✅ Modelo de Datos (COMPLETADO)

**Entidades creadas (9):**
- ✅ User, Group, Module (sistema base)
- ✅ Paciente (8 atributos)
- ✅ Fisioterapeuta (7 atributos)
- ✅ Cita (6 atributos)
- ✅ Tratamiento (5 atributos)
- ✅ Factura (6 atributos)
- ✅ Servicio (6 atributos)

**Relaciones implementadas (10):**
- User ↔ Group (N:M)
- User → DefaultGroup (N:1)
- Group → DefaultModule (N:1)
- Group ↔ Module (N:M)
- User → Paciente (1:1)
- User → Fisioterapeuta (1:1)
- Paciente → Cita (1:N)
- Fisioterapeuta → Cita (1:N)
- Cita ↔ Tratamiento (N:M)
- Paciente → Factura (1:N)

**Base de Datos:**
- ✅ PostgreSQL configurada (localhost:5432/FisioWebRatio)
- ✅ Script SQL generado: `Database1_251118_174423.sql`
- ✅ Todas las tablas mapeadas correctamente

### ⏳ Pendiente

**Site Views:**
- ⏳ Site View Público
- ⏳ Área Cliente
- ⏳ Área Fisioterapeuta
- ⏳ Área Administrador

**Componentes:**
- ⏳ Containers, View Components, Operations
- ⏳ Session Components (login/logout)
- ⏳ Utility Components

**Entrega:**
- ⏳ Presentación PDF
- ⏳ Video DEMO (10min)
- ⏳ Backup base de datos
- ⏳ ZIP final