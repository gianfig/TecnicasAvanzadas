--CREACION DE TABLA PUESTO
create table puesto (
idPuesto numeric identity,
Puesto nvarchar(50),
Salario numeric
constraint PK_idpuesto primary key(idPuesto)
)

--CREACION DE TABLA ACCESO
create table Acceso (
idAcceso numeric,
Descripcion nvarchar(50)
constraint pk_idAcceso primary key (idAcceso)
)

--CREACION DE TABLA EMPLEADO
create table empleado(
idEmpleado numeric identity,
idPuesto numeric,
idAcceso numeric,
Nombre nvarchar(50),
Apellido nvarchar(50),
FechaNacimiento date,
Correo nvarchar(50),
Pais nvarchar(50),
Dni numeric (10),
DireccionDomicilio nvarchar(100),
Contrasenia nvarchar (30),
TituloUniversitario nvarchar(50),
TrabajoAnterior nvarchar(50),
AniosExperiencia numeric (10),
SkillUno nvarchar(50),
SkillUDos nvarchar(50),
SkillTres nvarchar(50),
Presentacion nvarchar(1000)
Constraint idEmpleado primary key (idEmpleado,idPuesto,idAcceso)
)

--STORE PROCEDURE INSERTAR PUESTO
create procedure puesto_ins
@puesto nvarchar(100),
@salario int
AS
insert into puesto
values(
@puesto,
@salario
)

--STORE PROCEDURE INSERTAR ACCESO
create procedure Acceso_ins
@idAcceso numeric,
@Descripcion nvarchar(50)
AS
insert into Acceso
values(
@idAcceso,
@Descripcion
)

--STORE PROCEDURE INSERTAR EMPLEADO
create procedure empleado_ins
@idPuesto numeric,
@idAcceso numeric,
@Nombre nvarchar(50),
@Apellido nvarchar(50),
@FechaNacimiento date,
@Correo nvarchar(50),
@Pais nvarchar(50),
@Dni numeric (10),
@DireccionDomicilio nvarchar(100),
@Contrasenia nvarchar (30),
@TituloUniversitario nvarchar(50),
@TrabajoAnterior nvarchar(50),
@AniosExperiencia numeric (10),
@SkillUno nvarchar(50),
@SkillUDos nvarchar(50),
@SkillTres nvarchar(50),
@Presentacion nvarchar(1000)
AS
insert into Empleado
values(
@idPuesto,
@idAcceso,
@Nombre,
@Apellido,
@FechaNacimiento,
@Correo,
@Pais,
@Dni,
@DireccionDomicilio,
@Contrasenia,
@TituloUniversitario,
@TrabajoAnterior,
@AniosExperiencia,
@SkillUno,
@SkillUDos,
@SkillTres,
@Presentacion
)

--EJECUTAR STORE PROCEDURE ACCESO
exec Acceso_ins 1,'Acceso permitido al sistema'

--EJECUTAR STORE PROCEDURE PUESTO
exec puesto_ins 'Project Manager',350000

--EJECUTAR STORE PROCEDURE EMPLEADO
exec empleado_ins 5,0,'Alejo','Trepat','1990/06/13','alejotrepat@gmail.com','Argentina',34261237,'Corrientes 2351','trepatalejo321','Licenciatura en informática','Desarrollador software',8,'HTML','CSS','JS','Hola, soy alejo trepat, Estudiante de...'




