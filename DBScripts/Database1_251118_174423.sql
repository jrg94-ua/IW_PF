-- Group [Group]
create table "public"."group" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "public"."module" (
   "oid"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("oid")
);


-- User [User]
create table "public"."user" (
   "oid"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
  primary key ("oid")
);


-- Paciente [ent2]
create table "public"."paciente" (
   "oid"  int4  not null,
   "firstname"  varchar(255),
   "lastname"  varchar(255),
   "phone"  varchar(255),
   "email"  varchar(255),
   "address"  varchar(255),
   "birthdate"  date,
   "medicalhistory"  text,
  primary key ("oid")
);


-- Fisioterapeuta [ent3]
create table "public"."fisioterapeuta" (
   "oid"  int4  not null,
   "firstname"  varchar(255),
   "lastname"  varchar(255),
   "specialty"  varchar(255),
   "phone"  varchar(255),
   "email"  varchar(255),
   "licensenumber"  varchar(255),
  primary key ("oid")
);


-- Cita [ent4]
create table "public"."cita" (
   "oid"  int4  not null,
   "appointmentdate"  date,
   "appointmenttime"  time,
   "status"  varchar(255),
   "notes"  text,
   "duration"  int4,
  primary key ("oid")
);


-- Tratamiento [ent5]
create table "public"."tratamiento" (
   "oid"  int4  not null,
   "name"  varchar(255),
   "description"  text,
   "duration"  int4,
   "price"  float8,
  primary key ("oid")
);


-- Factura [ent6]
create table "public"."factura" (
   "oid"  int4  not null,
   "invoicenumber"  varchar(255),
   "invoicedate"  date,
   "totalamount"  float8,
   "paymentstatus"  varchar(255),
   "paymentdate"  date,
  primary key ("oid")
);


-- Servicio [ent7]
create table "public"."servicio" (
   "oid"  int4  not null,
   "name"  varchar(255),
   "description"  text,
   "category"  varchar(255),
   "price"  float8,
   "active"  bool,
  primary key ("oid")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "public"."group"  add column  "module_oid"  int4;
alter table "public"."group"   add constraint fk_group_module foreign key ("module_oid") references "public"."module" ("oid");


-- Group_Module [Group2Module_Module2Group]
create table "public"."group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "public"."group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "public"."group" ("oid");
alter table "public"."group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "public"."module" ("oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "public"."user"  add column  "group_oid"  int4;
alter table "public"."user"   add constraint fk_user_group foreign key ("group_oid") references "public"."group" ("oid");


-- User_Group [User2Group_Group2User]
create table "public"."user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "public"."user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "public"."user" ("oid");
alter table "public"."user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "public"."group" ("oid");


-- User_Paciente [rel1]
alter table "public"."paciente"  add column  "user_oid"  int4;
alter table "public"."paciente"   add constraint fk_paciente_user foreign key ("user_oid") references "public"."user" ("oid");


-- User_Fisioterapeuta [rel2]
alter table "public"."fisioterapeuta"  add column  "user_oid"  int4;
alter table "public"."fisioterapeuta"   add constraint fk_fisioterapeuta_user foreign key ("user_oid") references "public"."user" ("oid");


-- Paciente_Cita [rel3]
alter table "public"."cita"  add column  "paciente_oid"  int4;
alter table "public"."cita"   add constraint fk_cita_paciente foreign key ("paciente_oid") references "public"."paciente" ("oid");


-- Fisioterapeuta_Cita [rel4]
alter table "public"."cita"  add column  "fisioterapeuta_oid"  int4;
alter table "public"."cita"   add constraint fk_cita_fisioterapeuta foreign key ("fisioterapeuta_oid") references "public"."fisioterapeuta" ("oid");


-- Cita_Tratamiento [rel5]
create table "public"."cita_tratamiento" (
   "cita_oid"  int4 not null,
   "tratamiento_oid"  int4 not null,
  primary key ("cita_oid", "tratamiento_oid")
);
alter table "public"."cita_tratamiento"   add constraint fk_cita_tratamiento_cita foreign key ("cita_oid") references "public"."cita" ("oid");
alter table "public"."cita_tratamiento"   add constraint fk_cita_tratamiento_tratamient foreign key ("tratamiento_oid") references "public"."tratamiento" ("oid");


-- Paciente_Factura [rel6]
alter table "public"."factura"  add column  "paciente_oid"  int4;
alter table "public"."factura"   add constraint fk_factura_paciente foreign key ("paciente_oid") references "public"."paciente" ("oid");


