/*
Navicat SQL Server Data Transfer

Source Server         : TEST-HAL-DB
Source Server Version : 100000
Source Host           : test-hal-db:1433
Source Database       : Personal
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 100000
File Encoding         : 65001

Date: 2016-09-19 16:24:46
*/


-- ----------------------------
-- Table structure for EMPLEADOS
-- ----------------------------
DROP TABLE [EMPLEADOS]
GO
CREATE TABLE [EMPLEADOS] (
[NUMERO] varchar(10) NOT NULL ,
[CREDENCIAL] varchar(10) NOT NULL ,
[NOMBRE] varchar(20) NOT NULL ,
[APELLIDO1] varchar(20) NOT NULL ,
[APELLIDO2] varchar(20) NOT NULL ,
[ESTADO] varchar(1) NOT NULL ,
[EDOCIVIL] varchar(1) NOT NULL ,
[SEXO] varchar(1) NOT NULL ,
[TIPONOM] varchar(2) NOT NULL ,
[TURNO] varchar(2) NOT NULL ,
[CCTO] varchar(6) NOT NULL ,
[DEPTO] varchar(6) NOT NULL ,
[PUESTO] varchar(6) NOT NULL ,
[CODIGOPAGO] varchar(2) NOT NULL ,
[CODAHORRO] varchar(2) NOT NULL ,
[POLITICA] varchar(2) NOT NULL ,
[RFC] varchar(15) NOT NULL ,
[IMSS] varchar(20) NOT NULL ,
[CURP] varchar(18) NOT NULL ,
[FECHANAC] date NOT NULL ,
[LUGARORIG] varchar(35) NOT NULL ,
[ENTIDAD] int NOT NULL ,
[NACIONAL] varchar(15) NOT NULL ,
[HIJOS] int NOT NULL ,
[FECHALTA] date NOT NULL ,
[FECHABAJA] date NOT NULL ,
[REINGRESO] date NOT NULL ,
[BAJAIMSS] date NOT NULL ,
[MOTBAJA] int NOT NULL ,
[SUELDO] real NOT NULL ,
[SUELDOIMSS] real NOT NULL ,
[SUELDOINFO] real NOT NULL ,
[INICIASUEL] date NOT NULL ,
[SDI_VAR] real NOT NULL ,
[MOTIVO] varchar(100) NULL ,
[TIPO_SUEL] int NOT NULL ,
[TIPOCONTRA] varchar(1) NOT NULL ,
[INICIACON] date NOT NULL ,
[FINALCON] date NOT NULL ,
[ZONA] varchar(1) NOT NULL ,
[CIUDAD] varchar(4) NOT NULL ,
[COLONIA] varchar(6) NOT NULL ,
[DIRECCION] varchar(30) NOT NULL ,
[TELEFONO] varchar(15) NOT NULL ,
[CODPOSTAL] varchar(5) NOT NULL ,
[ESCOLARID] int NOT NULL ,
[CARRERA] varchar(40) NOT NULL ,
[APLICA_SUB] varchar(1) NOT NULL ,
[TIPO_EMPL] int NOT NULL ,
[TJORNADA] varchar(20) NOT NULL ,
[CLAVEBANCO] varchar(3) NOT NULL ,
[TREGIMEN] int NOT NULL ,
[REGPATRON] varchar(20) NOT NULL ,
[UTILIDADES] varchar(1) NOT NULL ,
[CLASERIES] int NOT NULL ,
[METODOP] varchar(2) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'NUMERO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'NUMERO DE EMPLEADO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'NUMERO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'NUMERO DE EMPLEADO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'NUMERO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CREDENCIAL')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'NUMERO DE CREDENCIAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CREDENCIAL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'NUMERO DE CREDENCIAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CREDENCIAL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'NOMBRE')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'NOMBRE'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'NOMBRE'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'NOMBRE'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'NOMBRE'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'APELLIDO1')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'APELLIDO PATERNO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'APELLIDO1'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'APELLIDO PATERNO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'APELLIDO1'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'APELLIDO2')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'APELLIDO MATERNO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'APELLIDO2'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'APELLIDO MATERNO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'APELLIDO2'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'ESTADO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'STATUS A=ACTIVO, I= INACTIVO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ESTADO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'STATUS A=ACTIVO, I= INACTIVO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ESTADO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'EDOCIVIL')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ESTADO CIVIL S=SOLTERO, C=CASADO, D=DIVORCIADO, V=VIDUDO, E=SEPARADO, U=UNION LIBRE'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'EDOCIVIL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ESTADO CIVIL S=SOLTERO, C=CASADO, D=DIVORCIADO, V=VIDUDO, E=SEPARADO, U=UNION LIBRE'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'EDOCIVIL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'SEXO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'F=FEMENINO, M=MASCULINO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SEXO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'F=FEMENINO, M=MASCULINO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SEXO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'TIPONOM')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE TIPOS DE NOMINA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TIPONOM'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE TIPOS DE NOMINA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TIPONOM'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'TURNO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE TURNOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TURNO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE TURNOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TURNO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CCTO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE CENTRO DE COSTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CCTO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE CENTRO DE COSTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CCTO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'DEPTO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE DEPARTAMENTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'DEPTO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE DEPARTAMENTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'DEPTO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'PUESTO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALAGO DE PUESTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'PUESTO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALAGO DE PUESTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'PUESTO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CODIGOPAGO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE CODIGO  DE PAGO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CODIGOPAGO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE CODIGO  DE PAGO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CODIGOPAGO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CODAHORRO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE FONDO DE AHORRO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CODAHORRO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE FONDO DE AHORRO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CODAHORRO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'POLITICA')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE POLITICAS DE BENEFICIO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'POLITICA'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE POLITICAS DE BENEFICIO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'POLITICA'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'RFC')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'RFC, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'RFC'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'RFC, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'RFC'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'IMSS')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'# DE SEGURO SOCIAL, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'IMSS'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'# DE SEGURO SOCIAL, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'IMSS'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CURP')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CURP, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CURP'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CURP, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CURP'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'FECHANAC')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE NACIMIENTO EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'FECHANAC'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE NACIMIENTO EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'FECHANAC'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'LUGARORIG')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'LUGAR DE ORIGEN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'LUGARORIG'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'LUGAR DE ORIGEN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'LUGARORIG'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'ENTIDAD')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ENTIDAD FEDERATIVA, CODIGO DE EL ESTADO DE NACIMIENTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ENTIDAD'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ENTIDAD FEDERATIVA, CODIGO DE EL ESTADO DE NACIMIENTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ENTIDAD'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'NACIONAL')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'NACIONALIDAD'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'NACIONAL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'NACIONALIDAD'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'NACIONAL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'HIJOS')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'# DE HIJOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'HIJOS'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'# DE HIJOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'HIJOS'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'FECHALTA')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE ALTA, EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'FECHALTA'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE ALTA, EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'FECHALTA'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'FECHABAJA')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE BAJA, EN FORMATO DD/MM/AAA, REQUERIDA SOLO SI ESTATUS ES INACTIVO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'FECHABAJA'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE BAJA, EN FORMATO DD/MM/AAA, REQUERIDA SOLO SI ESTATUS ES INACTIVO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'FECHABAJA'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'REINGRESO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE REINGRESO, EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'REINGRESO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE REINGRESO, EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'REINGRESO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'BAJAIMSS')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE BAJA ANTE EL IMSS, EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'BAJAIMSS'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE BAJA ANTE EL IMSS, EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'BAJAIMSS'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'MOTBAJA')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'1= TERMINO DE CONTRATO, 2=SEPARACIÓN VOLUNTARIA, 3=ABANDONO DE EMPLEO, 4=DEFUNCIÓN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'MOTBAJA'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'1= TERMINO DE CONTRATO, 2=SEPARACIÓN VOLUNTARIA, 3=ABANDONO DE EMPLEO, 4=DEFUNCIÓN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'MOTBAJA'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'SUELDO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'SUELDO BASE DIARIO, CAMPO OBLIGATARIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SUELDO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'SUELDO BASE DIARIO, CAMPO OBLIGATARIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SUELDO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'SUELDOIMSS')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'SUELDO DIARIO INTEGRADO IMSS, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SUELDOIMSS'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'SUELDO DIARIO INTEGRADO IMSS, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SUELDOIMSS'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'SUELDOINFO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'SUELDO DIARIO INTEGRADO INFO, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SUELDOINFO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'SUELDO DIARIO INTEGRADO INFO, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SUELDOINFO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'INICIASUEL')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE INICIO DE SUELDO, EN FORMATO DD/MM/AAAA, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'INICIASUEL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE INICIO DE SUELDO, EN FORMATO DD/MM/AAAA, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'INICIASUEL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'SDI_VAR')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'VARIABLE BIMESTRAL, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SDI_VAR'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'VARIABLE BIMESTRAL, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'SDI_VAR'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'MOTIVO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'MOTIVO DE CAMBIO DE SUELDO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'MOTIVO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'MOTIVO DE CAMBIO DE SUELDO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'MOTIVO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'TIPO_SUEL')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE SUELDO, 1=FIJO, 2=VARIABLE, 3=MIXTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TIPO_SUEL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE SUELDO, 1=FIJO, 2=VARIABLE, 3=MIXTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TIPO_SUEL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'TIPOCONTRA')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE CONTRATO, P=PERMANENTE, T=TEMPORAL, O=OTRO '
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TIPOCONTRA'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE CONTRATO, P=PERMANENTE, T=TEMPORAL, O=OTRO '
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TIPOCONTRA'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'INICIACON')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE TERMINO DE CONTRATO, EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'INICIACON'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE TERMINO DE CONTRATO, EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'INICIACON'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'FINALCON')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE TERMINO DE CONTRATO. EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'FINALCON'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE TERMINO DE CONTRATO. EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'FINALCON'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'ZONA')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'A O B'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ZONA'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'A O B'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ZONA'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CIUDAD')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO DE LA CIUDAD, CODIGO SEGUN CATALOGO DE CIUDADES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CIUDAD'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO DE LA CIUDAD, CODIGO SEGUN CATALOGO DE CIUDADES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CIUDAD'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'COLONIA')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO DE LA COLONIA, CODIGO SEGUN CATALOGO DE COLONIA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'COLONIA'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO DE LA COLONIA, CODIGO SEGUN CATALOGO DE COLONIA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'COLONIA'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'DIRECCION')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'DIRECCION'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'DIRECCION'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'DIRECCION'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'DIRECCION'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'TELEFONO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'# DE TELEFONO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TELEFONO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'# DE TELEFONO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TELEFONO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CODPOSTAL')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO POSTAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CODPOSTAL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO POSTAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CODPOSTAL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'ESCOLARID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ESCOLARIDAD, 1=PRIMARIA, 2=SECUNDARIA, 3=PREPARATORIA, 4=COMERCIO. 5=PASANTE, 6=PROFESIONAL, 7= '
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ESCOLARID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ESCOLARIDAD, 1=PRIMARIA, 2=SECUNDARIA, 3=PREPARATORIA, 4=COMERCIO. 5=PASANTE, 6=PROFESIONAL, 7= '
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ESCOLARID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CARRERA')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CARRERA TERMINADA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CARRERA'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CARRERA TERMINADA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CARRERA'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'APLICA_SUB')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'APLICA SUBSIDIO AL EMPLEADO, T=SI, F=NO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'APLICA_SUB'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'APLICA SUBSIDIO AL EMPLEADO, T=SI, F=NO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'APLICA_SUB'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'TIPO_EMPL')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE EMPLEADO, 1=NACIONAL, 2=EXTRANJERO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TIPO_EMPL'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE EMPLEADO, 1=NACIONAL, 2=EXTRANJERO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TIPO_EMPL'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'TJORNADA')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE JORNADA, NORMAL, REDUCIDA, ETC'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TJORNADA'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE JORNADA, NORMAL, REDUCIDA, ETC'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TJORNADA'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CLAVEBANCO')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CLAVE DE BANCO, CODIGO SEGÚN CATALOGO DE BANCOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CLAVEBANCO'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CLAVE DE BANCO, CODIGO SEGÚN CATALOGO DE BANCOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CLAVEBANCO'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'TREGIMEN')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE REGIMEN, 1=SUELDOS Y SALARIO, 2=JUBILADOS, 3=PENSIONADOS, ETC'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TREGIMEN'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE REGIMEN, 1=SUELDOS Y SALARIO, 2=JUBILADOS, 3=PENSIONADOS, ETC'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'TREGIMEN'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'REGPATRON')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'REGISTRO PATRONAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'REGPATRON'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'REGISTRO PATRONAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'REGPATRON'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'UTILIDADES')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CALCULA UTILIDADES, T= SI, F=NO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'UTILIDADES'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CALCULA UTILIDADES, T= SI, F=NO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'UTILIDADES'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'CLASERIES')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CLASE DE RIESGO, 1,2,3,4,5'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CLASERIES'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CLASE DE RIESGO, 1,2,3,4,5'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'CLASERIES'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'METODOP')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'METODO DE PAGO, CODIGO SEGÚN CATALOGO DE METODOS DE PAGO, 1= EFECTIVO, 2= CHEQUES, 3=TRANSFERENCIA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'METODOP'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'METODO DE PAGO, CODIGO SEGÚN CATALOGO DE METODOS DE PAGO, 1= EFECTIVO, 2= CHEQUES, 3=TRANSFERENCIA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'METODOP'
GO

-- ----------------------------
-- Records of EMPLEADOS
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO
