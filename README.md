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

### 🔹 MODELO DE DATOS (Clínica de Fisioterapia)
- [ ] **Cliente** (Patient) - datos personales, contacto, historial
- [ ] **Fisioterapeuta** (Physiotherapist) - especialidad, horarios
- [ ] **Cita** (Appointment) - fecha, hora, estado, notas
- [ ] **Tratamiento** (Treatment) - tipo, descripción, duración, precio
- [ ] **Factura** (Invoice) - fecha, importe, estado pago
- [ ] **Servicio** (Service) - catálogo de servicios ofrecidos
- [ ] Adaptar User, Group, Module al contexto de la clínica
- [ ] Definir todas las relaciones entre entidades
- [ ] Verificar mapeo con base de datos PostgreSQL

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

### Modelo de Datos Existente:
- ✅ User (username, password, email) → Adaptaremos para el sistema
- ✅ Group (groupname) → Roles: Cliente, Fisioterapeuta, Admin
- ✅ Module (modulename) → Áreas del sistema
- ⚠️ Nuevo (entidad de prueba - **ELIMINAR**)

### Entidades a Crear:
- ⏳ Cliente/Paciente (Patient)
- ⏳ Fisioterapeuta (Physiotherapist)
- ⏳ Cita (Appointment)
- ⏳ Tratamiento (Treatment)
- ⏳ Factura (Invoice)
- ⏳ Servicio (Service)

### Site Views:
- ⏳ Público (información general)
- ⏳ Área Cliente
- ⏳ Área Fisioterapeuta
- ⏳ Área Administrador

### Base de Datos:
- ✅ PostgreSQL configurada en localhost:5432
- ✅ Scripts de creación generados (pendiente actualizar)