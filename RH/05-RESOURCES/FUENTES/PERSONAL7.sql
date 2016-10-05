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

Date: 2016-09-29 17:36:25
*/


-- ----------------------------
-- Table structure for BANCOS
-- ----------------------------
DROP TABLE [BANCOS]
GO
CREATE TABLE [BANCOS] (
[id_bancos] varchar(3) NOT NULL ,
[descripcion_clave] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of BANCOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [BANCOS] ([id_bancos], [descripcion_clave]) VALUES (N'072', N'Bancos 1'), (N'073', N'Bancos 2')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for CENTROCOSTOS
-- ----------------------------
DROP TABLE [CENTROCOSTOS]
GO
CREATE TABLE [CENTROCOSTOS] (
[id_ccto] varchar(6) NOT NULL ,
[descripcion_ccto] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of CENTROCOSTOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [CENTROCOSTOS] ([id_ccto], [descripcion_ccto]) VALUES (N'1101', N'Centro Costos 1'), (N'1201', N'Centro Costos 2'), (N'1202', N'Centro Costos 3')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for CIUDADES
-- ----------------------------
DROP TABLE [CIUDADES]
GO
CREATE TABLE [CIUDADES] (
[id_ciudad] varchar(4) NOT NULL ,
[descripcion_ciudad] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of CIUDADES
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [CIUDADES] ([id_ciudad], [descripcion_ciudad]) VALUES (N'0296', N'Ciudad A'), (N'0403', N'Ciudad C'), (N'0406', N'Ciudad B')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for COLONIAS
-- ----------------------------
DROP TABLE [COLONIAS]
GO
CREATE TABLE [COLONIAS] (
[id_colonia] varchar(6) NOT NULL ,
[descripcion_colonia] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of COLONIAS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [COLONIAS] ([id_colonia], [descripcion_colonia]) VALUES (N'60000', N'Colonia 1'), (N'60001', N'Colonia 2'), (N'60002', N'Colonia 3')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for DEPARTAMENTOS
-- ----------------------------
DROP TABLE [DEPARTAMENTOS]
GO
CREATE TABLE [DEPARTAMENTOS] (
[id_departamento] varchar(6) NOT NULL ,
[descripcion_depto] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of DEPARTAMENTOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [DEPARTAMENTOS] ([id_departamento], [descripcion_depto]) VALUES (N'1101', N'Depto 1'), (N'1201', N'Depto 2')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for EMPLEADOS
-- ----------------------------
DROP TABLE [EMPLEADOS]
GO
CREATE TABLE [EMPLEADOS] (
[numero] varchar(10) NOT NULL ,
[credencial] varchar(10) NOT NULL ,
[nombre] varchar(20) NOT NULL ,
[apellido1] varchar(20) NOT NULL ,
[apellido2] varchar(20) NOT NULL ,
[estado] varchar(1) NOT NULL ,
[edocivil] varchar(1) NOT NULL ,
[sexo] varchar(1) NOT NULL ,
[tiponom] varchar(2) NOT NULL ,
[turno] varchar(2) NOT NULL ,
[ccto] varchar(6) NOT NULL ,
[depto] varchar(6) NOT NULL ,
[puesto] varchar(6) NOT NULL ,
[codigopago] varchar(2) NOT NULL ,
[codahorro] varchar(2) NOT NULL ,
[politica] varchar(2) NOT NULL ,
[rfc] varchar(15) NOT NULL ,
[imss] varchar(20) NOT NULL ,
[curp] varchar(18) NOT NULL ,
[fechanac] date NOT NULL ,
[lugarorig] varchar(35) NOT NULL ,
[entidad] int NOT NULL ,
[nacional] varchar(15) NOT NULL ,
[hijos] int NOT NULL ,
[fechaalta] date NOT NULL ,
[fechabaja] varchar(10) NOT NULL ,
[reingreso] varchar(10) NOT NULL ,
[bajaimss] varchar(10) NOT NULL ,
[motbaja] int NOT NULL ,
[sueldo] real NOT NULL ,
[sueldoimss] real NOT NULL ,
[sueldoinfo] real NOT NULL ,
[iniciasuel] date NOT NULL ,
[sdi_var] real NOT NULL ,
[motivo] varchar(100) NULL ,
[tipo_suel] int NOT NULL ,
[tipocontra] varchar(1) NOT NULL ,
[iniciacon] date NOT NULL ,
[finalcon] varchar(10) NOT NULL ,
[zona] varchar(1) NOT NULL ,
[estadodir] varchar(2) NULL ,
[ciudad] varchar(4) NOT NULL ,
[colonia] varchar(6) NOT NULL ,
[direccion] varchar(30) NOT NULL ,
[telefono] varchar(15) NOT NULL DEFAULT '' ,
[codpostal] varchar(5) NOT NULL ,
[escolarid] int NOT NULL ,
[carrera] varchar(40) NOT NULL ,
[aplica_sub] varchar(1) NOT NULL ,
[tipo_empl] int NOT NULL ,
[tjornada] varchar(20) NOT NULL ,
[clavebanco] varchar(3) NOT NULL ,
[tregimen] int NOT NULL ,
[regpatron] varchar(20) NOT NULL ,
[utilidades] varchar(1) NOT NULL ,
[claseries] int NOT NULL ,
[metodop] varchar(2) NOT NULL ,
[status_exportacion] bit NOT NULL DEFAULT ('0') ,
[fecha_exportacion] varchar(10) NULL ,
[user_lastupdate] varchar(50) NULL ,
[motivo_rechazo] int NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'numero')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'NUMERO DE EMPLEADO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'numero'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'NUMERO DE EMPLEADO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'numero'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'credencial')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'NUMERO DE CREDENCIAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'credencial'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'NUMERO DE CREDENCIAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'credencial'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'nombre')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'NOMBRE'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'nombre'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'NOMBRE'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'nombre'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'apellido1')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'APELLIDO PATERNO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'apellido1'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'APELLIDO PATERNO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'apellido1'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'apellido2')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'APELLIDO MATERNO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'apellido2'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'APELLIDO MATERNO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'apellido2'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'estado')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'STATUS A=ACTIVO, I= INACTIVO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'estado'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'STATUS A=ACTIVO, I= INACTIVO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'estado'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'edocivil')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ESTADO CIVIL S=SOLTERO, C=CASADO, D=DIVORCIADO, V=VIDUDO, E=SEPARADO, U=UNION LIBRE'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'edocivil'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ESTADO CIVIL S=SOLTERO, C=CASADO, D=DIVORCIADO, V=VIDUDO, E=SEPARADO, U=UNION LIBRE'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'edocivil'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'sexo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'F=FEMENINO, M=MASCULINO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sexo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'F=FEMENINO, M=MASCULINO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sexo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'tiponom')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE TIPOS DE NOMINA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tiponom'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE TIPOS DE NOMINA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tiponom'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'turno')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE TURNOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'turno'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE TURNOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'turno'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'ccto')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE CENTRO DE COSTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ccto'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE CENTRO DE COSTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ccto'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'depto')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE DEPARTAMENTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'depto'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE DEPARTAMENTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'depto'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'puesto')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALAGO DE PUESTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'puesto'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALAGO DE PUESTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'puesto'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'codigopago')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE CODIGO  DE PAGO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'codigopago'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE CODIGO  DE PAGO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'codigopago'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'codahorro')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE FONDO DE AHORRO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'codahorro'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE FONDO DE AHORRO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'codahorro'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'politica')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE POLITICAS DE BENEFICIO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'politica'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO SEGUN CATALOGO DE POLITICAS DE BENEFICIO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'politica'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'rfc')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'RFC, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'rfc'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'RFC, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'rfc'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'imss')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'# DE SEGURO SOCIAL, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'imss'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'# DE SEGURO SOCIAL, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'imss'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'curp')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CURP, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'curp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CURP, SIN GUIONES O SEPARADORES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'curp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'fechanac')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE NACIMIENTO EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'fechanac'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE NACIMIENTO EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'fechanac'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'lugarorig')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'LUGAR DE ORIGEN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'lugarorig'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'LUGAR DE ORIGEN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'lugarorig'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'entidad')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ENTIDAD FEDERATIVA, CODIGO DE EL ESTADO DE NACIMIENTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'entidad'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ENTIDAD FEDERATIVA, CODIGO DE EL ESTADO DE NACIMIENTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'entidad'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'nacional')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'NACIONALIDAD'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'nacional'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'NACIONALIDAD'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'nacional'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'hijos')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'# DE HIJOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'hijos'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'# DE HIJOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'hijos'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'fechaalta')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE ALTA, EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'fechaalta'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE ALTA, EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'fechaalta'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'fechabaja')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE BAJA, EN FORMATO DD/MM/AAA, REQUERIDA SOLO SI ESTATUS ES INACTIVO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'fechabaja'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE BAJA, EN FORMATO DD/MM/AAA, REQUERIDA SOLO SI ESTATUS ES INACTIVO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'fechabaja'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'reingreso')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE REINGRESO, EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'reingreso'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE REINGRESO, EN FORMATO DD/MM/AAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'reingreso'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'bajaimss')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE BAJA ANTE EL IMSS, EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'bajaimss'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE BAJA ANTE EL IMSS, EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'bajaimss'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'motbaja')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'1= TERMINO DE CONTRATO, 2=SEPARACIÓN VOLUNTARIA, 3=ABANDONO DE EMPLEO, 4=DEFUNCIÓN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'motbaja'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'1= TERMINO DE CONTRATO, 2=SEPARACIÓN VOLUNTARIA, 3=ABANDONO DE EMPLEO, 4=DEFUNCIÓN'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'motbaja'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'sueldo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'SUELDO BASE DIARIO, CAMPO OBLIGATARIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sueldo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'SUELDO BASE DIARIO, CAMPO OBLIGATARIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sueldo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'sueldoimss')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'SUELDO DIARIO INTEGRADO IMSS, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sueldoimss'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'SUELDO DIARIO INTEGRADO IMSS, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sueldoimss'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'sueldoinfo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'SUELDO DIARIO INTEGRADO INFO, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sueldoinfo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'SUELDO DIARIO INTEGRADO INFO, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sueldoinfo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'iniciasuel')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE INICIO DE SUELDO, EN FORMATO DD/MM/AAAA, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'iniciasuel'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE INICIO DE SUELDO, EN FORMATO DD/MM/AAAA, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'iniciasuel'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'sdi_var')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'VARIABLE BIMESTRAL, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sdi_var'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'VARIABLE BIMESTRAL, CAMPO OBLIGATORIO SIEMPRE QUE SE ACTUALICEN SUELDOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'sdi_var'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'motivo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'MOTIVO DE CAMBIO DE SUELDO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'motivo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'MOTIVO DE CAMBIO DE SUELDO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'motivo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'tipo_suel')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE SUELDO, 1=FIJO, 2=VARIABLE, 3=MIXTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tipo_suel'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE SUELDO, 1=FIJO, 2=VARIABLE, 3=MIXTO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tipo_suel'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'tipocontra')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE CONTRATO, P=PERMANENTE, T=TEMPORAL, O=OTRO '
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tipocontra'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE CONTRATO, P=PERMANENTE, T=TEMPORAL, O=OTRO '
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tipocontra'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'iniciacon')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE TERMINO DE CONTRATO, EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'iniciacon'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE TERMINO DE CONTRATO, EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'iniciacon'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'finalcon')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'FECHA DE TERMINO DE CONTRATO. EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'finalcon'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'FECHA DE TERMINO DE CONTRATO. EN FORMATO DD/MM/AAAA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'finalcon'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'zona')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'A O B'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'zona'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'A O B'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'zona'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'estadodir')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO DE ESTADO, SEGUN CATALOGO DE ESTADOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'estadodir'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO DE ESTADO, SEGUN CATALOGO DE ESTADOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'estadodir'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'ciudad')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO DE LA CIUDAD, CODIGO SEGUN CATALOGO DE CIUDADES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ciudad'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO DE LA CIUDAD, CODIGO SEGUN CATALOGO DE CIUDADES'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'ciudad'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'colonia')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO DE LA COLONIA, CODIGO SEGUN CATALOGO DE COLONIA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'colonia'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO DE LA COLONIA, CODIGO SEGUN CATALOGO DE COLONIA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'colonia'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'direccion')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'DIRECCION'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'direccion'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'DIRECCION'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'direccion'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'telefono')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'# DE TELEFONO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'telefono'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'# DE TELEFONO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'telefono'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'codpostal')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CODIGO POSTAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'codpostal'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CODIGO POSTAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'codpostal'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'escolarid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ESCOLARIDAD, 1=PRIMARIA, 2=SECUNDARIA, 3=PREPARATORIA, 4=COMERCIO. 5=PASANTE, 6=PROFESIONAL, 7= '
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'escolarid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ESCOLARIDAD, 1=PRIMARIA, 2=SECUNDARIA, 3=PREPARATORIA, 4=COMERCIO. 5=PASANTE, 6=PROFESIONAL, 7= '
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'escolarid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'carrera')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CARRERA TERMINADA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'carrera'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CARRERA TERMINADA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'carrera'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'aplica_sub')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'APLICA SUBSIDIO AL EMPLEADO, T=SI, F=NO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'aplica_sub'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'APLICA SUBSIDIO AL EMPLEADO, T=SI, F=NO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'aplica_sub'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'tipo_empl')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE EMPLEADO, 1=NACIONAL, 2=EXTRANJERO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tipo_empl'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE EMPLEADO, 1=NACIONAL, 2=EXTRANJERO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tipo_empl'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'tjornada')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE JORNADA, NORMAL, REDUCIDA, ETC'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tjornada'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE JORNADA, NORMAL, REDUCIDA, ETC'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tjornada'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'clavebanco')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CLAVE DE BANCO, CODIGO SEGÚN CATALOGO DE BANCOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'clavebanco'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CLAVE DE BANCO, CODIGO SEGÚN CATALOGO DE BANCOS'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'clavebanco'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'tregimen')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'TIPO DE REGIMEN, 1=SUELDOS Y SALARIO, 2=JUBILADOS, 3=PENSIONADOS, ETC'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tregimen'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'TIPO DE REGIMEN, 1=SUELDOS Y SALARIO, 2=JUBILADOS, 3=PENSIONADOS, ETC'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'tregimen'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'regpatron')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'REGISTRO PATRONAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'regpatron'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'REGISTRO PATRONAL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'regpatron'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'utilidades')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CALCULA UTILIDADES, T= SI, F=NO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'utilidades'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CALCULA UTILIDADES, T= SI, F=NO'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'utilidades'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'claseries')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'CLASE DE RIESGO, 1,2,3,4,5'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'claseries'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'CLASE DE RIESGO, 1,2,3,4,5'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'claseries'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'EMPLEADOS', 
'COLUMN', N'metodop')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'METODO DE PAGO, CODIGO SEGÚN CATALOGO DE METODOS DE PAGO, 1= EFECTIVO, 2= CHEQUES, 3=TRANSFERENCIA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'metodop'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'METODO DE PAGO, CODIGO SEGÚN CATALOGO DE METODOS DE PAGO, 1= EFECTIVO, 2= CHEQUES, 3=TRANSFERENCIA'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'EMPLEADOS'
, @level2type = 'COLUMN', @level2name = N'metodop'
GO

-- ----------------------------
-- Records of EMPLEADOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [EMPLEADOS] ([numero], [credencial], [nombre], [apellido1], [apellido2], [estado], [edocivil], [sexo], [tiponom], [turno], [ccto], [depto], [puesto], [codigopago], [codahorro], [politica], [rfc], [imss], [curp], [fechanac], [lugarorig], [entidad], [nacional], [hijos], [fechaalta], [fechabaja], [reingreso], [bajaimss], [motbaja], [sueldo], [sueldoimss], [sueldoinfo], [iniciasuel], [sdi_var], [motivo], [tipo_suel], [tipocontra], [iniciacon], [finalcon], [zona], [estadodir], [ciudad], [colonia], [direccion], [telefono], [codpostal], [escolarid], [carrera], [aplica_sub], [tipo_empl], [tjornada], [clavebanco], [tregimen], [regpatron], [utilidades], [claseries], [metodop], [status_exportacion], [fecha_exportacion], [user_lastupdate], [motivo_rechazo]) VALUES (N'03698', N'03698', N'Margarita Montserrat', N'Araujo', N'Ramirez', N'I', N'C', N'F', N'01', N'01', N'1101', N'1101', N'019', N'01', N'01', N'01', N'AARM910220GM9', N'12119111982', N'AARM910220MGTRMR01', N'1991-02-20', N'GUANAJUATO', N'11', N'MEXICANA', N'2', N'2016-09-28', N'29/09/2016', N'00/00/0000', N'00/00/0000', N'0', N'147', N'153.65', N'153.65', N'2016-09-28', N'0', N'1', N'1', N'O', N'2016-09-28', N'00/00/0000', N'A', N'11', N'0406', N'60001', N'Andador Corrientes', N'4774737738', N'37479', N'6', N'Contabilidad', N'T', N'1', N'Normal', N'072', N'1', N'HALMEX', N'T', N'1', N'3', N'0', N'00/00/0000', N'ADMIN', null), (N'03699', N'03699', N'Jose de Jesus Omar', N'Venegas', N'Ramirez', N'A', N'S', N'M', N'01', N'01', N'1101', N'1101', N'019', N'01', N'01', N'01', N'VERJ9210181H5', N'63109212215', N'AARM910220MGTRMR01', N'1992-10-18', N'GUANAJUATO', N'11', N'MEXICANA', N'1', N'2016-09-28', N'00/00/0000', N'00/00/0000', N'00/00/0000', N'0', N'147', N'153.65', N'153.65', N'2016-09-28', N'0', N'1', N'1', N'P', N'2016-09-28', N'00/00/0000', N'A', N'11', N'0406', N'60002', N'Blanco', N'4727387365', N'36100', N'6', N'xxxxxxxxx', N'F', N'1', N'Normal', N'072', N'1', N'HALMEX', N'T', N'1', N'3', N'1', N'29/09/2016', N'ADMIN', null), (N'03700', N'03700', N'Luis', N'Ramirez', N'Vazquez', N'I', N'C', N'M', N'01', N'01', N'1101', N'1101', N'019', N'01', N'01', N'01', N'QQQQ123456AAA', N'12128203879', N'RAVL821026HDFMZS07', N'1982-10-26', N'GUANAJUATO', N'11', N'MEXICANA', N'0', N'2016-09-28', N'29/09/2016', N'00/00/0000', N'00/00/0000', N'0', N'152.66', N'185.22', N'200.3333', N'2016-09-28', N'0', N'1', N'1', N'P', N'2016-09-28', N'00/00/0000', N'A', N'01', N'0296', N'60000', N'', N'', N'', N'6', N'xxxxxxxxxx', N'F', N'1', N'Normal', N'072', N'1', N'HALMEX', N'T', N'1', N'3', N'0', N'00/00/0000', N'ADMIN', null), (N'03701', N'03701', N'prueba', N'prueba', N'prueba', N'A', N'C', N'F', N'01', N'01', N'1101', N'1201', N'019', N'01', N'01', N'01', N'', N'', N'', N'2016-09-28', N'GUANAJUATO', N'11', N'MEXICANA', N'0', N'2016-09-28', N'00/00/0000', N'00/00/0000', N'00/00/0000', N'0', N'0', N'0', N'0', N'2016-09-28', N'0', N'1', N'1', N'P', N'2016-09-28', N'00/00/0000', N'R', N'01', N'0296', N'60000', N'', N'', N'', N'1', N'', N'F', N'1', N'Normal', N'072', N'1', N'HALMEX', N'T', N'0', N'3', N'1', N'29/09/2016', N'ADMIN', null), (N'03702', N'03702', N'PRUEBA', N'PRUEBA', N'PRUEBA', N'I', N'C', N'M', N'01', N'01', N'1101', N'1101', N'019', N'01', N'01', N'01', N'QQQQ1111111QQ', N'63109212215', N'DDDD555555DDDDDD00', N'2016-09-28', N'QUERÉTARO', N'22', N'MEXICANA', N'9', N'2016-09-28', N'29/09/2016', N'00/00/0000', N'00/00/0000', N'0', N'15', N'55.55', N'99.55', N'2016-09-28', N'0', N'1', N'1', N'P', N'2016-09-28', N'00/00/0000', N'A', N'13', N'0406', N'60001', N'ZZZZZZZZZZZ', N' 222222222', N'11111', N'4', N'ZZZZZZZZZZZZZZZZ', N'F', N'1', N'Normal', N'072', N'1', N'HALMEX', N'T', N'1', N'3', N'0', N'00/00/0000', N'ADMIN', null), (N'03703', N'03703', N'PRUEBA', N'PRUEBA', N'PRUEBA', N'A', N'D', N'F', N'01', N'01', N'1101', N'1101', N'019', N'01', N'01', N'01', N'AAAA1111111VV', N'11111111111', N'SSSS444444SSSSSS', N'2016-09-28', N'SINALOA', N'25', N'MEXICANA', N'2', N'2016-09-28', N'00/00/0000', N'00/00/0000', N'00/00/0000', N'0', N'22.33', N'50.33', N'99.55', N'2016-09-28', N'0', N'1', N'1', N'P', N'2016-09-28', N'00/00/0000', N'A', N'23', N'0406', N'60001', N'XXX', N'4444444444', N'44444', N'1', N'XXXXXXXXXXXX', N'F', N'1', N'Normal', N'072', N'1', N'HALMEX', N'T', N'1', N'3', N'1', N'29/09/2016', N'ADMIN', null), (N'03709', N'03709', N'j', N'j', N'j', N'I', N'S', N'F', N'01', N'01', N'1101', N'1101', N'019', N'01', N'01', N'01', N'', N'', N'', N'2016-09-29', N'GUANAJUATO', N'11', N'MEXICANA', N'0', N'2016-09-29', N'00/00/0000', N'00/00/0000', N'00/00/0000', N'0', N'0', N'0', N'0', N'2016-09-29', N'0', N'1', N'1', N'P', N'2016-09-29', N'00/00/0000', N'R', N'01', N'0296', N'60000', N'', N'', N'', N'1', N'', N'F', N'1', N'Normal', N'072', N'1', N'HALMEX', N'T', N'0', N'3', N'0', null, N'admin', null), (N'03711', N'03711', N'df', N'f', N'ffffff', N'A', N'D', N'M', N'01', N'03', N'1101', N'1201', N'020', N'01', N'01', N'01', N'', N'', N'', N'2009-10-20', N'QUERETARO', N'22', N'MEXICANA', N'0', N'2016-09-29', N'00/00/0000', N'00/00/0000', N'00/00/0000', N'0', N'0', N'0', N'0', N'2016-09-29', N'0', N'1', N'1', N'P', N'2016-09-29', N'00/00/0000', N'R', N'01', N'0296', N'60000', N'', N'', N'', N'1', N'', N'F', N'1', N'Normal', N'072', N'1', N'HALMEX', N'T', N'0', N'3', N'0', null, N'admin', null), (N'03712', N'03712', N'ss', N'ss', N'sss', N'A', N'C', N'F', N'01', N'02', N'1201', N'1101', N'021', N'01', N'01', N'01', N'', N'', N'', N'1999-12-28', N'DURANGO', N'10', N'MEXICANA', N'0', N'2016-09-29', N'00/00/0000', N'00/00/0000', N'00/00/0000', N'0', N'0', N'0', N'0', N'2016-09-29', N'0', N'1', N'1', N'P', N'2016-09-29', N'00/00/0000', N'R', N'01', N'0296', N'60000', N'', N'', N'', N'1', N'', N'F', N'1', N'Normal', N'072', N'1', N'HALMEX', N'T', N'0', N'3', N'0', null, N'admin', null)
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ESCOLARIDAD
-- ----------------------------
DROP TABLE [ESCOLARIDAD]
GO
CREATE TABLE [ESCOLARIDAD] (
[id_escolaridad] int NOT NULL IDENTITY(1,1) ,
[descripcion_escolaridad] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[ESCOLARIDAD]', RESEED, 6)
GO

-- ----------------------------
-- Records of ESCOLARIDAD
-- ----------------------------
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT [ESCOLARIDAD] ON
GO
INSERT INTO [ESCOLARIDAD] ([id_escolaridad], [descripcion_escolaridad]) VALUES (N'1', N'Primaria'), (N'2', N'Secundaria'), (N'3', N'Preparatoria'), (N'4', N'Comercio'), (N'5', N'Pasante'), (N'6', N'Profesional')
GO
GO
SET IDENTITY_INSERT [ESCOLARIDAD] OFF
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for ESTADOS
-- ----------------------------
DROP TABLE [ESTADOS]
GO
CREATE TABLE [ESTADOS] (
[id_estados] varchar(2) NOT NULL ,
[descripcion_estados] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of ESTADOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [ESTADOS] ([id_estados], [descripcion_estados]) VALUES (N'01', N'AGUASCALIENTES'), (N'02', N'BAJA CALIFORNIA'), (N'03', N'BAJA CALIFORNIA SUR'), (N'04', N'CAMPECHE'), (N'05', N'COAHUILA'), (N'06', N'COLIMA'), (N'07', N'CHIAPAS'), (N'08', N'CHIHUAHUA'), (N'09', N'DISTRITO FEDERAL'), (N'10', N'DURANGO'), (N'11', N'GUANAJUATO'), (N'12', N'GUERRERO'), (N'13', N'HIDALGO'), (N'14', N'JALISCO'), (N'15', N'MÉXICO'), (N'16', N'MICHOACÁN'), (N'17', N'MORELOS'), (N'18', N'NAYARIT'), (N'19', N'NUEVO LEÓN'), (N'20', N'OAXACA'), (N'21', N'PUEBLA'), (N'22', N'QUERÉTARO'), (N'23', N'QUINTANA ROO'), (N'24', N'SAN LUIS POTOSI'), (N'25', N'SINALOA'), (N'26', N'SONORA'), (N'27', N'TABASCO'), (N'28', N'TAMAULIPAS'), (N'29', N'TLAXCALA'), (N'30', N'VERACRUZ'), (N'31', N'YUCÁTAN'), (N'32', N'ZACATECAS')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for FONDOSAHORRO
-- ----------------------------
DROP TABLE [FONDOSAHORRO]
GO
CREATE TABLE [FONDOSAHORRO] (
[id_fondo_ahorro] varchar(2) NOT NULL ,
[descripcion_fondo_ahorro] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of FONDOSAHORRO
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [FONDOSAHORRO] ([id_fondo_ahorro], [descripcion_fondo_ahorro]) VALUES (N'01', N'Fondo de ahorro 1'), (N'02', N'Fondo de ahorro 2')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for METODOSPAGOS
-- ----------------------------
DROP TABLE [METODOSPAGOS]
GO
CREATE TABLE [METODOSPAGOS] (
[id_metodospago] varchar(2) NOT NULL ,
[descripcion_metodo_pago] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of METODOSPAGOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [METODOSPAGOS] ([id_metodospago], [descripcion_metodo_pago]) VALUES (N'1', N'Efectivo'), (N'2', N'Cheque'), (N'3', N'Transferencia')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for MOTIVODESCARTO
-- ----------------------------
DROP TABLE [MOTIVODESCARTO]
GO
CREATE TABLE [MOTIVODESCARTO] (
[id_motivo] int NOT NULL IDENTITY(1,1) ,
[descripcion_motivo] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[MOTIVODESCARTO]', RESEED, 7)
GO

-- ----------------------------
-- Records of MOTIVODESCARTO
-- ----------------------------
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT [MOTIVODESCARTO] ON
GO
INSERT INTO [MOTIVODESCARTO] ([id_motivo], [descripcion_motivo]) VALUES (N'1', N'No cumple con el perfil'), (N'2', N'No entrego documentación'), (N'3', N'No se presento a la entrevista'), (N'4', N'Dejo de ir al curso de inducción'), (N'5', N'No se presento al curso de inducción'), (N'6', N'Rechazo propuesta  de salario'), (N'7', N'Otro')
GO
GO
SET IDENTITY_INSERT [MOTIVODESCARTO] OFF
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for NOMINAS
-- ----------------------------
DROP TABLE [NOMINAS]
GO
CREATE TABLE [NOMINAS] (
[id_nomina] varchar(2) NOT NULL ,
[descripcion_nomina] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of NOMINAS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [NOMINAS] ([id_nomina], [descripcion_nomina]) VALUES (N'01', N'Nomina 1'), (N'02', N'Nomina 2'), (N'03', N'Nomina 3')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for PAGOS
-- ----------------------------
DROP TABLE [PAGOS]
GO
CREATE TABLE [PAGOS] (
[id_pagos] varchar(2) NOT NULL ,
[descripcion_pagos] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of PAGOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [PAGOS] ([id_pagos], [descripcion_pagos]) VALUES (N'01', N'Pago 1'), (N'02', N'Pago 2')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for POLITICASBENEFICIOS
-- ----------------------------
DROP TABLE [POLITICASBENEFICIOS]
GO
CREATE TABLE [POLITICASBENEFICIOS] (
[id_politica] varchar(2) NOT NULL ,
[descripcion_politica] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of POLITICASBENEFICIOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [POLITICASBENEFICIOS] ([id_politica], [descripcion_politica]) VALUES (N'01', N'Beneficio 1'), (N'02', N'Beneficio 2')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for PUESTOS
-- ----------------------------
DROP TABLE [PUESTOS]
GO
CREATE TABLE [PUESTOS] (
[id_puesto] varchar(6) NOT NULL ,
[descripcion_puesto] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of PUESTOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [PUESTOS] ([id_puesto], [descripcion_puesto]) VALUES (N'019', N'Puesto 1'), (N'020', N'Puesto 2'), (N'021', N'Puesto 3')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
DROP TABLE [sysdiagrams]
GO
CREATE TABLE [sysdiagrams] (
[name] sysname NOT NULL ,
[principal_id] int NOT NULL ,
[diagram_id] int NOT NULL IDENTITY(1,1) ,
[version] int NULL ,
[definition] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
BEGIN TRANSACTION
GO
SET IDENTITY_INSERT [sysdiagrams] ON
GO
INSERT INTO [sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Entidad-Relacion', N'1', N'1', N'1', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF23000000FEFFFFFF040000000500000006000000070000000800000009000000380000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000FEFFFFFFFEFFFFFF25000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F0000003000000031000000320000003300000034000000350000003600000037000000FEFFFFFF39000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000B07CB0517C17D2010300000000120000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000001A0C0000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000A0000002B31000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000310000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F00000030000000FEFFFFFF32000000FEFFFFFFFEFFFFFF35000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F00000040000000410000004200000043000000440000004500000046000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000430000A1E100C050000802D0000000F00FFFF2D000000007D0000724E0000E42A000020630000EBC000004BFCFFFF52720000DE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C29000000280B000000A9010000003400A50900000700008001000000AA020000008000000C0000805363684772696400662100001815000043454E54524F434F53544F5300003400A50900000700008002000000AA020000008000000C0000805363684772696400922200003A200000444550415254414D454E544F00003400A50900000700008003000000A4020000008000000900008053636847726964000000000000000000454D504C4541444F534E544F00003800A50900000700008004000000AE020000008000000E0000805363684772696400BE230000249000004D4F5449564F444553434152544F000000003000A50900000700008005000000A00200000080000007000080536368477269640066210000C20100004E4F4D494E41530000003000A50900000700008006000000A002000000800000070000805363684772696400922200005C2B000050554553544F530000003000A509000007000080070000009E0200000080000006000080536368477269640066210000B80B00005455524E4F53640000006800A5090000070000800900000052000000018000003D000080436F6E74726F6C00E9130000C100000052656C616369F36E2027464B5F454D504C4541444F535F4E4F4D494E41532720656E74726520274E4F4D494E41532720792027454D504C4541444F532700000000002800B5010000070000800A000000310000005B00000002800000436F6E74726F6C00EA1300005100000000006400A5090000070000800B00000062000000018000003B000080436F6E74726F6C00E91300009310000052656C616369F36E2027464B5F454D504C4541444F535F5455524E4F532720656E74726520275455524E4F532720792027454D504C4541444F53275300002800B5010000070000800C000000310000005900000002800000436F6E74726F6C00240F00002310000000007000A5090000070000800D000000520000000180000047000080436F6E74726F6C00E91300000517000052656C616369F36E2027464B5F454D504C4541444F535F43454E54524F434F53544F532720656E747265202743454E54524F434F53544F532720792027454D504C4541444F53270100002800B5010000070000800E000000310000006500000002800000436F6E74726F6C00F21100009516000000006800A5090000070000800F00000062000000018000003D000080436F6E74726F6C00E9130000FD1C000052656C616369F36E2027464B5F454D504C4541444F535F50554553544F532720656E747265202750554553544F532720792027454D504C4541444F532700000000002800B50100000700008010000000310000005B00000002800000436F6E74726F6C00C11A0000EB29000000007000A50900000700008011000000620000000180000047000080436F6E74726F6C00E9130000671C000052656C616369F36E2027464B5F454D504C4541444F535F444550415254414D454E544F2720656E7472652027444550415254414D454E544F2720792027454D504C4541444F53270000002800B50100000700008012000000310000006500000002800000436F6E74726F6C0043160000C91E000000003000A509000007000080130000009E0200000080000006000080536368477269640028230000A46A000042414E434F53640000003000A50900000700008014000000A202000000800000080000805363684772696400BE23000022560000434955444144455300003000A50900000700008015000000A20200000080000008000080536368477269645328230000AE600000434F4C4F4E49415300003400A50900000700008016000000AA020000008000000C000080536368477269640028230000307500004D45544F444F535041474F5300003000A509000007000080170000009C0200000080000005000080536368477269640092220000E83500005041474F5369640000006400A50900000700008018000000620000000180000039000080436F6E74726F6C53E91300004B29000052656C616369F36E2027464B5F454D504C4541444F535F5041474F532720656E74726520275041474F532720792027454D504C4541444F532700000000002800B50100000700008019000000310000005700000002800000436F6E74726F6C00831C00009B2E000000003400A5090000070000801A000000AA020000008000000C00008053636847726964002823000074400000464F4E444F5341484F52524F00003C00A5090000070000801B000000B802000000800000130000805363684772696400BE230000964B0000504F4C49544943415342454E45464943494F530000007000A5090000070000801C0000005A0000000180000047000080436F6E74726F6C00E9130000912E000052656C616369F36E2027464B5F454D504C4541444F535F464F4E444F5341484F52524F2720656E7472652027464F4E444F5341484F52524F2720792027454D504C4541444F53270000002800B5010000070000801D000000310000006500000002800000436F6E74726F6C00E51D0000052E000000008000A5090000070000801E0000005A0000000180000055000080436F6E74726F6C00E91300002F36000052656C616369F36E2027464B5F454D504C4541444F535F504F4C49544943415342454E45464943494F532720656E7472652027504F4C49544943415342454E45464943494F532720792027454D504C4541444F532700000000002800B5010000070000801F000000310000007300000002800000436F6E74726F6C00F51C0000A335000000006800A5090000070000802000000052000000018000003F000080436F6E74726F6C00E91300002155000052656C616369F36E2027464B5F454D504C4541444F535F43495544414445532720656E747265202743495544414445532720792027454D504C4541444F53270000002800B50100000700008021000000310000005D00000002800000436F6E74726F6C00DD140000B154000000006800A5090000070000802200000062000000018000003F000080436F6E74726F6C00E9130000AF5B000052656C616369F36E2027464B5F454D504C4541444F535F434F4C4F4E4941532720656E7472652027434F4C4F4E4941532720792027454D504C4541444F53270000002800B50100000700008023000000310000005D00000002800000436F6E74726F6C00301800003D5F000000006400A5090000070000802400000052000000018000003B000080436F6E74726F6C00E9130000396A000052656C616369F36E2027464B5F454D504C4541444F535F42414E434F532720656E747265202742414E434F532720792027454D504C4541444F53274400002800B50100000700008025000000310000005900000002800000436F6E74726F6C0022150000C969000000007000A50900000700008026000000520000000180000047000080436F6E74726F6C00E91300002F74000052656C616369F36E2027464B5F454D504C4541444F535F4D45544F444F535041474F532720656E74726520274D45544F444F535041474F532720792027454D504C4541444F53270000002800B50100000700008027000000310000006500000002800000436F6E74726F6C53C5120000BF73000000003000A50900000700008029000000A20200000080000008000080536368477269640028230000267F00005553554152494F5300007400A5090000070000802C0000005A000000018000004B000080436F6E74726F6C00AF100000B382000052656C616369F36E2027464B5F454D504C4541444F535F4D4F5449564F444553434152544F2720656E74726520274D4F5449564F444553434152544F2720792027454D504C4541444F53270C00002800B5010000070000802D000000310000006900000002800000436F6E74726F6C00CE0F0000B38E000000000000000000000000000000000000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200C050A9517C17D201020200001048450000000000000000000000000000000000760100004400610074006100200053006F0075007200630065003D004D0049004E0049004C00410050005C00530051004C0045005800500052004500530053003B0049006E0069007400690061006C00200043006100740061006C006F0067003D0050006500720073006F006E0061006C003B0049006E00740065006700720061007400650064002000530065006300750072006900740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00214334120800000015150000B7090000785634120700000014010000430045004E00540052004F0043004F00530054004F005300000067002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620030003300660035006600370066003100310064003500300061003300610000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC070000540600001D01000068010000FF000000380400001C0200004A0100001C020000B2020000D1010000000000000100000015150000B709000000000000020000000200000002000000020000001C010000DB0600000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D000000430045004E00540052004F0043004F00530054004F0053000000214334120800000015150000B709000078563412070000001401000044004500500041005200540041004D0045004E0054004F00000067002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003000330066003500660037006600310031006400350030006100330061000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC070000540600001D01000068010000FF000000380400001C0200004A0100001C020000B2020000D1010000000000000100000015150000B709000000000000020000000200000002000000020000001C010000BD0600000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D00000044004500500041005200540041004D0045004E0054004F0000002143341208000000151500006E85000078563412070000001401000045004D0050004C004500410044004F005300000000000000BF0D0000CF1B00000400000004000000400000000000000000000000FFFFFFFFFFFFFFFF0200000004000000400000000000000000000000FFFFFFFFFFFFFFFF0200000002000000800000000000000000000000FFFFFFFFFFFFFFFF0200000004000000400000000000000000000000FFFFFFFFFFFFFFFF0200000004000000400000000000000000000000FFFFFFFFFFFFFFFF0400000004000000400000000000000000000000FFFFFFFFFFFFFFFF0200000004000000400000000000000000000000FFFFFFFFFFFFFFFF02000000040000004000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC07000054060000D0020000840300007602000038040000460500002A03000046050000AE060000920400000000000001000000151500006E850000000000003B0000000C00000002000000020000001C010000AB0900000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A00000045004D0050004C004500410044004F0053000000214334120800000015150000B70900007856341207000000140100004D004F005400490056004F0044004500530043004100520054004F0000002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003000330066003500660037006600310031006400350030006100330061000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC07000054060000D0020000840300007602000038040000460500002A03000046050000AE06000092040000000000000100000015150000B709000000000000020000000200000002000000020000001C010000AB0900000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F0000004D004F005400490056004F0044004500530043004100520054004F000000214334120800000015150000B70900007856341207000000140100004E004F004D0049004E0041005300000072006100770069006E0067002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003000330066003500660037006600310031006400350030006100330061000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC070000540600001D01000068010000FF000000380400001C0200004A0100001C020000B2020000D1010000000000000100000015150000B709000000000000020000000200000002000000020000001C010000DB0600000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000080000004E004F004D0049004E00410053000000214334120800000015150000B7090000785634120700000014010000500055004500530054004F005300000069006E0064006F00770073002E0046006F0072006D0073002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003700370061003500630035003600310039003300340065003000380039000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC070000540600001D01000068010000FF000000380400001C0200004A0100001C020000B2020000D1010000000000000100000015150000B709000000000000020000000200000002000000020000001C010000BD0600000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000008000000500055004500530054004F0053000000214334120800000015150000FE0800007856341207000000140100005400550052004E004F0053000000440072006100770069006E0067002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003000330066003500660037006600310031006400350030006100330061000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC070000540600001D01000068010000FF000000380400001C0200004A0100001C020000B2020000D1010000000000000100000015150000FE08000000000000020000000200000002000000020000001C010000DB0600000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000005400550052004E004F005300000002000B00662100005802000015150000580200000000000002000000F0F0F00000000000000000000000000000000000010000000A00000000000000EA13000051000000A50E00005801000032000000010000020000A50E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61140046004B005F0045004D0050004C004500410044004F0053005F004E004F004D0049004E004100530004000B00662100002A1200001F1C00002A1200001F1C00003219000015150000321900000000000002000000F0F0F00000000000000000000000000000000000010000000C00000000000000240F000023100000F80D00005801000014000000010000020000F80D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61130046004B005F0045004D0050004C004500410044004F0053005F005400550052004E004F00530002000B00662100009C180000151500009C1800000000000002000000F0F0F00000000000000000000000000000000000010000000E00000000000000F2110000951600009612000058010000320000000100000200009612000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F0045004D0050004C004500410044004F0053005F00430045004E00540052004F0043004F00530054004F00530004000B0092220000F22B00003E1B0000F22B00003E1B0000781E000015150000781E00000000000002000000F0F0F00000000000000000000000000000000000010000001000000000000000C11A0000EB2900006B0E000058010000170000000100000200006B0E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61140046004B005F0045004D0050004C004500410044004F0053005F00500055004500530054004F00530004000B0092220000D0200000D41B0000D0200000D41B0000E21D000015150000E21D00000000000002000000F0F0F0000000000000000000000000000000000001000000120000000000000043160000C91E00007912000058010000140000000100000200007912000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61190046004B005F0045004D0050004C004500410044004F0053005F0044004500500041005200540041004D0045004E0054004F00214334120800000015150000B7090000785634120700000014010000420041004E0043004F0053000000570069006E0064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC07000054060000D0020000840300007602000038040000460500002A03000046050000AE06000092040000000000000100000015150000B709000000000000020000000200000002000000020000001C010000AB0900000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000007000000420041004E0043004F0053000000214334120800000015150000B709000078563412070000001401000043004900550044004100440045005300000065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003700370061003500630035003600310039003300340065003000380039000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC070000540600003A020000D0020000FE0100003804000038040000850200003804000055050000A2030000000000000100000015150000B709000000000000020000000200000002000000020000001C010000AB0900000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000090000004300490055004400410044004500530000002143341208000000E81800008309000078563412070000001401000043004F004C004F004E00490041005300000065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003700370061003500630035003600310039003300340065003000380039000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC070000540600003A020000D0020000FE0100003804000038040000850200003804000055050000A20300000000000001000000E81800008309000000000000020000000200000002000000020000001C010000C70B00000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000043004F004C004F004E004900410053000000214334120800000015150000B70900007856341207000000140100004D00450054004F0044004F0053005000410047004F00530000004F0000006D002000460069006C00650073002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100300030002F0054006F006F006C0073002F00420069006E006E002F00560053005300680065006C006C002F0043006F006D006D006F006E0037002F004900440045002F00650073002D00450053002F004D006900630072006F0073006F00660074002E004400610074006100570061007200650068006F007500730065002E00530051004D002E007200650073006F0075007200000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC07000054060000D0020000840300007602000038040000460500002A03000046050000AE06000092040000000000000100000015150000B709000000000000020000000200000002000000020000001C010000AB0900000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D0000004D00450054004F0044004F0053005000410047004F0053000000214334120800000015150000B70900007856341207000000140100005000410047004F005300000043004F00530054004F0053000000720061006D002000460069006C00650073002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100300030002F0054006F006F006C0073002F00420069006E006E002F00560053005300680065006C006C002F0043006F006D006D006F006E0037002F004900440045002F00650073002F004D006900630072006F0073006F00660074002E004400610074006100570061007200650068006F007500730065002E00530051004D002E007200650073006F0075007200630065007300000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC0700005406000068010000C20100003B01000038040000A302000095010000A30200005703000049020000000000000100000015150000B709000000000000020000000200000002000000020000001C010000600900000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000060000005000410047004F005300000004000B00922200007E360000D41B00007E360000D41B0000C62A000015150000C62A00000000000002000000F0F0F00000000000000000000000000000000000010000001900000000000000831C00009B2E00002E0D000058010000320000000100000200002E0D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61120046004B005F0045004D0050004C004500410044004F0053005F005000410047004F005300214334120800000015150000B709000078563412070000001401000046004F004E0044004F005300410048004F00520052004F0000006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003700370061003500630035003600310039003300340065003000380039000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC07000054060000B30100001C02000077010000380400002A030000E00100002A030000FC030000C1020000000000000100000015150000B709000000000000020000000200000002000000020000001C010000600900000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D00000046004F004E0044004F005300410048004F00520052004F000000214334120800000004160000B709000078563412070000001401000050004F004C00490054004900430041005300420045004E00450046004900430049004F00530000002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC070000540600003A020000D0020000FE0100003804000038040000850200003804000055050000A2030000000000000100000004160000B709000000000000020000000200000002000000020000001C010000230A00000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000007000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001400000050004F004C00490054004900430041005300420045004E00450046004900430049004F005300000003000B00BE23000074400000BE2300000C300000151500000C3000000000000002000000F0F0F00000000000000000000000000000000000010000001D00000000000000E51D0000052E00000913000058010000490000000100000200000913000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61190046004B005F0045004D0050004C004500410044004F0053005F0046004F004E0044004F005300410048004F00520052004F0003000B0054240000964B000054240000AA37000015150000AA3700000000000002000000F0F0F00000000000000000000000000000000000010000001F00000000000000F51C0000A335000014160000580100004F0000000100000200001416000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61200046004B005F0045004D0050004C004500410044004F0053005F0050004F004C00490054004900430041005300420045004E00450046004900430049004F00530002000B00BE230000B856000015150000B85600000000000002000000F0F0F00000000000000000000000000000000000010000002100000000000000DD140000B1540000180F00005801000032000000010000020000180F000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61150046004B005F0045004D0050004C004500410044004F0053005F004300490055004400410044004500530004000B0028230000446100001F1C0000446100001F1C00002A5D0000151500002A5D00000000000002000000F0F0F00000000000000000000000000000000000010000002300000000000000301800003D5F0000350F00005801000013000000010000020000350F000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61150046004B005F0045004D0050004C004500410044004F0053005F0043004F004C004F004E0049004100530002000B0028230000D06B000015150000D06B00000000000002000000F0F0F0000000000000000000000000000000000001000000250000000000000022150000C9690000F80D00005801000034000000010000020000F80D000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61130046004B005F0045004D0050004C004500410044004F0053005F00420041004E0043004F00530002000B0028230000C675000015150000C67500000000000002000000F0F0F00000000000000000000000000000000000010000002700000000000000C5120000BF730000B31200005801000032000000010000020000B312000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61190046004B005F0045004D0050004C004500410044004F0053005F004D00450054004F0044004F0053005000410047004F0053002143341208000000EA1100006B1000007856341207000000140100005500530055004100520049004F00530000006E0064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000007D21000091140000000000002D010000070000000C000000070000001C010000F9060000AF050000D00200008403000076020000CF030000460500002A03000046050000AE060000920400000000000001000000EA1100006B10000000000000050000000500000002000000020000001C010000DA07000000000000010000006F100000FF05000000000000010000000100000002000000020000001C010000F906000001000000000000006F100000ED03000000000000000000000000000002000000020000001C010000F906000000000000000000001A2800001321000000000000000000000D00000004000000040000001C010000F9060000340800000A05000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000090000005500530055004100520049004F005300000003000B00BE230000BA9000002A120000BA9000002A1200006E8500000000000002000000F0F0F00000000000000000000000000000000000010000002D00000000000000CE0F0000B38E0000F01300005801000000000000010000020000F013000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611B0046004B005F0045004D0050004C004500410044004F0053005F004D004F005400490056004F0044004500530043004100520054004F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000024000000212700000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000330000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000034000000AC0400000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000004700000012000000000000000C0000004BFCFFFF527200000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003700350035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003700320035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000030000000300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000040000000400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000050000000500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003700350035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000060000000600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003700320035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000070000000700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003700350035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000000900000009000000000000003A0000000100000001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F004E004F004D0049004E004100530000000000000000000000C402000000000A0000000A00000009000000080000000159DA0C5859DA0C0000000000000000AD0700000000000B0000000B00000000000000380000000100000001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F005400550052004E004F00530000000000000000000000C402000000000C0000000C0000000B000000080000000159DA0C1859DA0C0000000000000000AD0700000000000D0000000D000000000000004400000001004F0001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F00430045004E00540052004F0043004F00530054004F00530000000000000000000000C402000000000E0000000E0000000D00000008000000015ADA0C985ADA0C0000000000000000AD0700000000000F0000000F000000000000003A0000000100000001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F00500055004500530054004F00530000000000000000000000C4020000000010000000100000000F000000080000000133D90CA833D90C0000000000000000AD070000000000110000001100000000000000440000000100001C01000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F0044004500500041005200540041004D0045004E0054004F0000000000000000000000C40200000000120000001200000011000000080000000132D90CE832D90C0000000000000000AD070000000000130000001300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000140000001400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000150000001500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003000310035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000160000001600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000170000001700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000180000001800000000000000360000000100000001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F005000410047004F00530000000000000000000000C4020000000019000000190000001800000008000000017ACE0C907ACE0C0000000000000000AD0700000000001A0000001A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000001B0000001B00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003500390035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000001C0000001C00000000000000440000000100080001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F0046004F004E0044004F005300410048004F00520052004F0000000000000000000000C402000000001D0000001D0000001C00000008000000017ACE0C507ACE0C0000000000000000AD0700000000001E0000001E00000000000000520000000100000001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F0050004F004C00490054004900430041005300420045004E00450046004900430049004F00530000000000000000000000C402000000001F0000001F0000001E00000008000000017CCE0C107CCE0C0000000000000000AD0700000000002000000020000000000000003C0000000100000001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F004300490055004400410044004500530000000000000000000000C40200000000210000002100000020000000080000000178CE0CD078CE0C0000000000000000AD0700000000002200000022000000000000003C0000000100000001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F0043004F004C004F004E0049004100530000000000000000000000C4020000000023000000230000002200000008000000017CCE0C907CCE0C0000000000000000AD070000000000240000002400000000000000380000000100710001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F00420041004E0043004F00530000000000000000000000C4020000000025000000250000002400000008000000012FD90CE82FD90C0000000000000000AD070000000000260000002600000000000000440000000100000201000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F004D00450054004F0044004F0053005000410047004F00530000000000000000000000C4020000000027000000270000002600000008000000012ED90C682ED90C0000000000000000AD070000000000290000002900000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003800000034002C0030002C003200380034002C0030002C0031003700380035002C0031002C0031003400350035002C0035002C003900370035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003000310030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003700380035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003700380035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003700380035002C00310032002C0032003100300030002C00310031002C00310032003900300000002C0000002C0000000000000048000000012C000001000000640062006F00000046004B005F0045004D0050004C004500410044004F0053005F004D004F005400490056004F0044004500530043004100520054004F0000000000000000000000C402000000002D0000002D0000002C000000080000000164DA0C5864DA0C0000000000000000AD0F0000010000410000000D0000000100000003000000500000009900000011000000020000000300000046000000AB0000002C0000000400000003000000460000003D000000090000000500000003000000460000004D0000000F000000060000000300000046000000AD0000000B00000007000000030000005A0000009B00000024000000130000000300000048000000B5010000200000001400000003000000460000006D010000220000001500000003000000520000008301000026000000160000000300000046000000D701000018000000170000000300000046000000D70000001C0000001A0000000300000000000000E90000001E0000001B00000003000000000000000301000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F0022000000008005002200000045006E00740069006400610064002D00520065006C006100630069006F006E00000000022600120000005500530055004100520049004F005300000008000000640062006F000000000226002800000050004F004C00490054004900430041005300420045004E00450046004900430049004F005300000008000000640062006F000000000226001A00000046004F004E0044004F005300410048004F00520052004F00000008000000640062006F000000000226000C0000005000410047004F005300000008000000640062006F000000000226001A0000004D00450054004F0044004F0053005000410047004F005300000008000000640062006F000000000226001200000043004F004C004F004E00490041005300000008000000640062006F000000000226001200000043004900550044004100440045005300000008000000640062006F000000000226000E000000420041004E0043004F005300000008000000640062006F000000000226000E0000005400550052004E004F005300000008000000640062006F0000000002260010000000500055004500530054004F005300000008000000640062006F00000000022600100000004E004F004D0049004E0041005300000008000000640062006F000000000226001E0000004D004F005400490056004F0044004500530043004100520054004F00000008000000640062006F000000000226001400000045004D0050004C004500410044004F005300000008000000640062006F000000000226001A00000044004500500041005200540041004D0045004E0054004F00000008000000640062006F000000000224001A000000430045004E00540052004F0043004F00530054004F005300000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D0000000000000000000000000000000000000000000000010003000000000000000C0000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO
GO
SET IDENTITY_INSERT [sysdiagrams] OFF
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for TURNOS
-- ----------------------------
DROP TABLE [TURNOS]
GO
CREATE TABLE [TURNOS] (
[id_turno] varchar(2) NOT NULL ,
[descripcion_turno] varchar(250) NULL 
)


GO

-- ----------------------------
-- Records of TURNOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [TURNOS] ([id_turno], [descripcion_turno]) VALUES (N'01', N'Turno 1'), (N'02', N'Turno 2'), (N'03', N'Turno 3')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for USUARIOS
-- ----------------------------
DROP TABLE [USUARIOS]
GO
CREATE TABLE [USUARIOS] (
[username] varchar(50) NOT NULL ,
[pass] varchar(50) NOT NULL ,
[roll] varchar(250) NULL DEFAULT ('Usuario') ,
[nombre] varchar(255) NULL ,
[email] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of USUARIOS
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [USUARIOS] ([username], [pass], [roll], [nombre], [email]) VALUES (N'admin', N'8998admin8998', N'Administrador', N'Luis Ramirez', N'ramirezl@halmex.com.mx'), (N'gema', N'xyzgemaxyz', N'Usuario', N'x', N'x'), (N'hugo', N'8998hugo8998', N'Usuario', N'Hugo', null), (N'monse', N'abcmonseabc', N'Usuario', N'Monserrat Rodriguez', N'recursoshumanos@halmex.com.mx')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Procedure structure for buscar_empleado
-- ----------------------------
DROP PROCEDURE [buscar_empleado]
GO



create proc [buscar_empleado]
@numero varchar(10)
as
select * from empleado
where numero=@numero




GO

-- ----------------------------
-- Procedure structure for eliminar_empleados
-- ----------------------------
DROP PROCEDURE [eliminar_empleados]
GO
create proc [eliminar_empleados]
@numero VARCHAR(10)
As
Delete from EMPLEADOS
Where numero=@numero

GO

-- ----------------------------
-- Procedure structure for genera_empexpor_empdescar
-- ----------------------------
DROP PROCEDURE [genera_empexpor_empdescar]
GO

CREATE proc [genera_empexpor_empdescar]
@numero VARCHAR (10),
@estado VARCHAR (1),
@fechabaja VARCHAR (10),
@status_exportacion BIT,
@fecha_exportacion VARCHAR (10),
@user_lastupdate VARCHAR  (50)
As
Update EMPLEADOS
Set estado=@estado, 
fechabaja=@fechabaja,
status_exportacion=@status_exportacion,
fecha_exportacion=@fecha_exportacion,
user_lastupdate=@user_lastupdate
Where
numero=@numero



GO

-- ----------------------------
-- Procedure structure for insertar_empleados
-- ----------------------------
DROP PROCEDURE [insertar_empleados]
GO


CREATE proc [insertar_empleados]
@numero varchar(10),
@credencial varchar(10),
@nombre varchar(20),
@apellido1 varchar(20),
@apellido2 varchar(20),
@estado varchar(1),
@edocivil varchar(1),
@sexo varchar(1),
@tiponom varchar(2),
@turno varchar(2),
@ccto varchar(6),
@depto varchar(6),
@puesto varchar(6),
@codigopago varchar(2),
@codahorro varchar(2),
@politica varchar(2),
@rfc varchar(15),
@imss varchar(20),
@curp varchar(18),
@fechanac date,
@lugarorig varchar(35),
@entidad int,
@nacional varchar(15),
@hijos int,
@fechaalta date,
@fechabaja varchar(10),
@reingreso varchar(10),
@bajaimss varchar(10),
@motbaja int,
@sueldo real,
@sueldoimss real,
@sueldoinfo real,
@iniciasuel date,
@sdi_var real,
@motivo varchar(100),
@tipo_suel int,
@tipocontra varchar(1),
@iniciacon date,
@finalcon varchar(10),
@zona varchar(1),
@estadodir varchar(2),
@ciudad varchar(4),
@colonia varchar(6),
@direccion varchar(30),
@telefono varchar(15),
@codpostal varchar(5),
@escolarid int,
@carrera varchar(40),
@aplica_sub varchar(1),
@tipo_empl int,
@tjornada varchar(20),
@clavebanco varchar(3),
@tregimen int,
@regpatron varchar(20),
@utilidades varchar(1),
@claseries int,
@metodop varchar(2),
@user_lastupdate varchar(50)


As

INSERT INTO EMPLEADOS (numero, credencial, nombre, apellido1, apellido2, estado, edocivil, sexo, tiponom, turno, ccto, depto, puesto, codigopago, codahorro, politica, rfc, imss, curp, fechanac, lugarorig, entidad, nacional, hijos, fechaalta, fechabaja, reingreso, bajaimss, motbaja, sueldo, sueldoimss, sueldoinfo, iniciasuel, sdi_var, motivo, tipo_suel, tipocontra, iniciacon, finalcon, zona, estadodir, ciudad, colonia, direccion, telefono, codpostal, escolarid, carrera, aplica_sub, tipo_empl, tjornada, clavebanco, tregimen, regpatron, utilidades, claseries, metodop, user_lastupdate)
VALUES (@numero, @credencial,@nombre,@apellido1,@apellido2,@estado,@edocivil,@sexo,@tiponom,@turno,@ccto,@depto,@puesto,@codigopago,@codahorro,@politica,@rfc, @imss, @curp, @fechanac, @lugarorig,@entidad, @nacional,@hijos, @fechaalta, @fechabaja,@reingreso,@bajaimss, @motbaja, @sueldo, @sueldoimss, @sueldoinfo, @iniciasuel,@sdi_var,@motivo, @tipo_suel,@tipocontra,@iniciacon, @finalcon,@zona, @estadodir, @ciudad, @colonia, @direccion, @telefono, @codpostal, @escolarid, @carrera, @aplica_sub, @tipo_empl, @tjornada, @clavebanco, @tregimen, @regpatron, @utilidades, @claseries, @metodop, @user_lastupdate)




GO

-- ----------------------------
-- Procedure structure for insertar_empleados_
-- ----------------------------
DROP PROCEDURE [insertar_empleados_]
GO



CREATE proc [insertar_empleados_]
@numero varchar(10),
@credencial varchar(10),
@nombre varchar(20),
@apellido1 varchar(20),
@apellido2 varchar(20),
@estado varchar(1),
@edocivil varchar(1),
@sexo varchar(1),
@tiponom varchar(2),
@turno varchar(2),
@ccto varchar(6),
@depto varchar(6),
@puesto varchar(6),
@codigopago varchar(2),
@codahorro varchar(2),
@politica varchar(2),
@rfc varchar(15),
@imss varchar(20),
@curp varchar(18),
@fechanac varchar(10),
@lugarorig varchar(35),
@entidad int,
@nacional varchar(15),
@hijos int,
@fechaalta varchar(10),
@fechabaja varchar(10),
@reingreso varchar(10),
@bajaimss varchar(10),
@motbaja int,
@sueldo real,
@sueldoimss real,
@sueldoinfo real,
@iniciasuel varchar(10),
@sdi_var real,
@motivo varchar(100),
@tipo_suel int,
@tipocontra varchar(1),
@iniciacon varchar(10),
@finalcon varchar(10),
@zona varchar(1),
@estadodir varchar(2),
@ciudad varchar(4),
@colonia varchar(6),
@direccion varchar(30),
@telefono varchar(15),
@codpostal varchar(5),
@escolarid int,
@carrera varchar(40),
@aplica_sub varchar(1),
@tipo_empl int,
@tjornada varchar(20),
@clavebanco varchar(3),
@tregimen int,
@regpatron varchar(20),
@utilidades varchar(1),
@claseries int,
@metodop varchar(2),
@status_exportacion bit,
@fecha_exportacion varchar(10),
@user_lastupdate varchar(50)


As

INSERT INTO EMPLEADOS (numero, credencial, nombre, apellido1, apellido2, estado, edocivil, sexo, tiponom, turno, ccto, depto, puesto, codigopago, codahorro, politica, rfc, imss, curp, fechanac, lugarorig, entidad, nacional, hijos, fechaalta, fechabaja, reingreso, bajaimss, motbaja, sueldo, sueldoimss, sueldoinfo, iniciasuel, sdi_var, motivo, tipo_suel, tipocontra, iniciacon, finalcon, zona, estadodir, ciudad, colonia, direccion, telefono, codpostal, escolarid, carrera, aplica_sub, tipo_empl, tjornada, clavebanco, tregimen, regpatron, utilidades, claseries, metodop, status_exportacion, fecha_exportacion, user_lastupdate)
VALUES (@numero, @credencial,@nombre,@apellido1,@apellido2,@estado,@edocivil,@sexo,@tiponom,@turno,@ccto,@depto,@puesto,@codigopago,@codahorro,@politica,@rfc, @imss, @curp, @fechanac, @lugarorig,@entidad, @nacional,@hijos, @fechaalta, @fechabaja,@reingreso,@bajaimss, @motbaja, @sueldo, @sueldoimss, @sueldoinfo, @iniciasuel,@sdi_var,@motivo, @tipo_suel,@tipocontra,@iniciacon, @finalcon,@zona, @estadodir, @ciudad, @colonia, @direccion, @telefono, @codpostal, @escolarid, @carrera, @aplica_sub, @tipo_empl, @tjornada, @clavebanco, @tregimen, @regpatron, @utilidades, @claseries, @metodop, @status_exportacion, @fecha_exportacion, @user_lastupdate)




GO

-- ----------------------------
-- Procedure structure for insertar_motivorechazo
-- ----------------------------
DROP PROCEDURE [insertar_motivorechazo]
GO




CREATE proc [insertar_motivorechazo]
@descripcion_motivo varchar(255)
As
INSERT INTO MOTIVODESCARTO (descripcion_motivo)
VALUES (@descripcion_motivo)




GO

-- ----------------------------
-- Procedure structure for mostrar_empleados
-- ----------------------------
DROP PROCEDURE [mostrar_empleados]
GO
CREATE proc [mostrar_empleados]
as
SELECT
dbo.EMPLEADOS.numero,
dbo.EMPLEADOS.fechaalta,
dbo.EMPLEADOS.nombre,
dbo.EMPLEADOS.apellido1,
dbo.EMPLEADOS.apellido2,
dbo.TURNOS.descripcion_turno,
dbo.DEPARTAMENTOS.descripcion_depto,
dbo.PUESTOS.descripcion_puesto,
dbo.EMPLEADOS.rfc,
dbo.EMPLEADOS.imss,
dbo.EMPLEADOS.curp,
dbo.EMPLEADOS.fechanac,
DATEDIFF(yy,dbo.EMPLEADOS.fechanac,GETDATE()) AS EDAD,
dbo.EMPLEADOS.lugarorig,
dbo.ESTADOS.descripcion_estados,
dbo.CIUDADES.descripcion_ciudad,
dbo.COLONIAS.descripcion_colonia,
dbo.EMPLEADOS.direccion,
dbo.EMPLEADOS.telefono,
dbo.ESCOLARIDAD.descripcion_escolaridad,
dbo.EMPLEADOS.carrera,
dbo.EMPLEADOS.credencial,
dbo.EMPLEADOS.estado,
dbo.EMPLEADOS.edocivil,
dbo.EMPLEADOS.sexo,
dbo.EMPLEADOS.tiponom,
dbo.EMPLEADOS.turno,
dbo.EMPLEADOS.ccto,
dbo.EMPLEADOS.depto,
dbo.EMPLEADOS.puesto,
dbo.EMPLEADOS.codigopago,
dbo.EMPLEADOS.codahorro,
dbo.EMPLEADOS.politica,
dbo.EMPLEADOS.entidad,
dbo.EMPLEADOS.nacional,
dbo.EMPLEADOS.hijos,
dbo.EMPLEADOS.fechabaja,
dbo.EMPLEADOS.reingreso,
dbo.EMPLEADOS.bajaimss,
dbo.EMPLEADOS.motbaja,
dbo.EMPLEADOS.sueldo,
dbo.EMPLEADOS.sueldoimss,
dbo.EMPLEADOS.sueldoinfo,
dbo.EMPLEADOS.iniciasuel,
dbo.EMPLEADOS.sdi_var,
dbo.EMPLEADOS.motivo,
dbo.EMPLEADOS.tipo_suel,
dbo.EMPLEADOS.tipocontra,
dbo.EMPLEADOS.iniciacon,
dbo.EMPLEADOS.finalcon,
dbo.EMPLEADOS.zona,
dbo.EMPLEADOS.estadodir,
dbo.EMPLEADOS.ciudad,
dbo.EMPLEADOS.colonia,
dbo.EMPLEADOS.codpostal,
dbo.EMPLEADOS.escolarid,
dbo.EMPLEADOS.aplica_sub,
dbo.EMPLEADOS.tipo_empl,
dbo.EMPLEADOS.tjornada,
dbo.EMPLEADOS.clavebanco,
dbo.EMPLEADOS.tregimen,
dbo.EMPLEADOS.regpatron,
dbo.EMPLEADOS.utilidades,
dbo.EMPLEADOS.claseries,
dbo.EMPLEADOS.metodop,
dbo.EMPLEADOS.status_exportacion,
dbo.EMPLEADOS.fecha_exportacion,
dbo.EMPLEADOS.user_lastupdate,
dbo.EMPLEADOS.motivo_rechazo,
dbo.CENTROCOSTOS.descripcion_ccto

FROM
dbo.EMPLEADOS
INNER JOIN dbo.TURNOS ON dbo.EMPLEADOS.turno = dbo.TURNOS.id_turno
INNER JOIN dbo.DEPARTAMENTOS ON dbo.EMPLEADOS.depto = dbo.DEPARTAMENTOS.id_departamento
INNER JOIN dbo.PUESTOS ON dbo.EMPLEADOS.puesto = dbo.PUESTOS.id_puesto
INNER JOIN dbo.ESTADOS ON dbo.EMPLEADOS.estadodir = dbo.ESTADOS.id_estados
INNER JOIN dbo.CIUDADES ON dbo.EMPLEADOS.ciudad = dbo.CIUDADES.id_ciudad
INNER JOIN dbo.COLONIAS ON dbo.EMPLEADOS.colonia = dbo.COLONIAS.id_colonia
INNER JOIN dbo.ESCOLARIDAD ON dbo.EMPLEADOS.escolarid = dbo.ESCOLARIDAD.id_escolaridad
INNER JOIN dbo.CENTROCOSTOS ON dbo.EMPLEADOS.ccto = dbo.CENTROCOSTOS.id_ccto
WHERE
dbo.EMPLEADOS.status_exportacion = 0 AND
dbo.EMPLEADOS.estado = 'A'
ORDER BY
dbo.EMPLEADOS.numero ASC



GO

-- ----------------------------
-- Procedure structure for mostrar_empleados_rechazados
-- ----------------------------
DROP PROCEDURE [mostrar_empleados_rechazados]
GO
CREATE proc [mostrar_empleados_rechazados]
as
SELECT
dbo.EMPLEADOS.numero,
dbo.EMPLEADOS.fechaalta,
dbo.EMPLEADOS.nombre,
dbo.EMPLEADOS.apellido1,
dbo.EMPLEADOS.apellido2,
dbo.TURNOS.descripcion_turno,
dbo.DEPARTAMENTOS.descripcion_depto,
dbo.PUESTOS.descripcion_puesto,
dbo.EMPLEADOS.rfc,
dbo.EMPLEADOS.imss,
dbo.EMPLEADOS.curp,
dbo.EMPLEADOS.fechanac,
DATEDIFF(yy,dbo.EMPLEADOS.fechanac,GETDATE()) AS EDAD,
dbo.EMPLEADOS.lugarorig,
dbo.ESTADOS.descripcion_estados,
dbo.CIUDADES.descripcion_ciudad,
dbo.COLONIAS.descripcion_colonia,
dbo.EMPLEADOS.direccion,
dbo.EMPLEADOS.telefono,
dbo.ESCOLARIDAD.descripcion_escolaridad,
dbo.EMPLEADOS.carrera,
dbo.EMPLEADOS.credencial,
dbo.EMPLEADOS.estado,
dbo.EMPLEADOS.edocivil,
dbo.EMPLEADOS.sexo,
dbo.EMPLEADOS.tiponom,
dbo.EMPLEADOS.turno,
dbo.EMPLEADOS.ccto,
dbo.EMPLEADOS.depto,
dbo.EMPLEADOS.puesto,
dbo.EMPLEADOS.codigopago,
dbo.EMPLEADOS.codahorro,
dbo.EMPLEADOS.politica,
dbo.EMPLEADOS.entidad,
dbo.EMPLEADOS.nacional,
dbo.EMPLEADOS.hijos,
dbo.EMPLEADOS.fechabaja,
dbo.EMPLEADOS.reingreso,
dbo.EMPLEADOS.bajaimss,
dbo.EMPLEADOS.motbaja,
dbo.EMPLEADOS.sueldo,
dbo.EMPLEADOS.sueldoimss,
dbo.EMPLEADOS.sueldoinfo,
dbo.EMPLEADOS.iniciasuel,
dbo.EMPLEADOS.sdi_var,
dbo.EMPLEADOS.motivo,
dbo.EMPLEADOS.tipo_suel,
dbo.EMPLEADOS.tipocontra,
dbo.EMPLEADOS.iniciacon,
dbo.EMPLEADOS.finalcon,
dbo.EMPLEADOS.zona,
dbo.EMPLEADOS.estadodir,
dbo.EMPLEADOS.ciudad,
dbo.EMPLEADOS.colonia,
dbo.EMPLEADOS.codpostal,
dbo.EMPLEADOS.escolarid,
dbo.EMPLEADOS.aplica_sub,
dbo.EMPLEADOS.tipo_empl,
dbo.EMPLEADOS.tjornada,
dbo.EMPLEADOS.clavebanco,
dbo.EMPLEADOS.tregimen,
dbo.EMPLEADOS.regpatron,
dbo.EMPLEADOS.utilidades,
dbo.EMPLEADOS.claseries,
dbo.EMPLEADOS.metodop,
dbo.EMPLEADOS.status_exportacion,
dbo.EMPLEADOS.fecha_exportacion,
dbo.EMPLEADOS.user_lastupdate,
dbo.EMPLEADOS.motivo_rechazo

FROM
dbo.EMPLEADOS
INNER JOIN dbo.TURNOS ON dbo.EMPLEADOS.turno = dbo.TURNOS.id_turno
INNER JOIN dbo.DEPARTAMENTOS ON dbo.EMPLEADOS.depto = dbo.DEPARTAMENTOS.id_departamento 
INNER JOIN dbo.PUESTOS ON dbo.EMPLEADOS.puesto = dbo.PUESTOS.id_puesto
INNER JOIN dbo.ESTADOS ON dbo.EMPLEADOS.estadodir = dbo.ESTADOS.id_estados
INNER JOIN dbo.CIUDADES ON dbo.EMPLEADOS.ciudad = dbo.CIUDADES.id_ciudad
INNER JOIN dbo.COLONIAS ON dbo.EMPLEADOS.colonia = dbo.COLONIAS.id_colonia
INNER JOIN dbo.ESCOLARIDAD ON dbo.EMPLEADOS.escolarid = dbo.ESCOLARIDAD.id_escolaridad
WHERE
dbo.EMPLEADOS.status_exportacion = 0 and dbo.EMPLEADOS.estado= 'I'
ORDER BY
dbo.EMPLEADOS.numero ASC
GO

-- ----------------------------
-- Procedure structure for validar_usuarios
-- ----------------------------
DROP PROCEDURE [validar_usuarios]
GO



CREATE proc [validar_usuarios]
@log nvarchar (50),
@pas nvarchar(50)
As
Select * from usuarios
Where username=@log and pass=@pas








GO

-- ----------------------------
-- Indexes structure for table BANCOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table BANCOS
-- ----------------------------
ALTER TABLE [BANCOS] ADD PRIMARY KEY ([id_bancos])
GO

-- ----------------------------
-- Indexes structure for table CENTROCOSTOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CENTROCOSTOS
-- ----------------------------
ALTER TABLE [CENTROCOSTOS] ADD PRIMARY KEY ([id_ccto])
GO

-- ----------------------------
-- Indexes structure for table CIUDADES
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CIUDADES
-- ----------------------------
ALTER TABLE [CIUDADES] ADD PRIMARY KEY ([id_ciudad])
GO

-- ----------------------------
-- Indexes structure for table COLONIAS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table COLONIAS
-- ----------------------------
ALTER TABLE [COLONIAS] ADD PRIMARY KEY ([id_colonia])
GO

-- ----------------------------
-- Indexes structure for table DEPARTAMENTOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table DEPARTAMENTOS
-- ----------------------------
ALTER TABLE [DEPARTAMENTOS] ADD PRIMARY KEY ([id_departamento])
GO

-- ----------------------------
-- Indexes structure for table EMPLEADOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table EMPLEADOS
-- ----------------------------
ALTER TABLE [EMPLEADOS] ADD PRIMARY KEY ([numero], [status_exportacion])
GO

-- ----------------------------
-- Indexes structure for table ESCOLARIDAD
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ESCOLARIDAD
-- ----------------------------
ALTER TABLE [ESCOLARIDAD] ADD PRIMARY KEY ([id_escolaridad])
GO

-- ----------------------------
-- Indexes structure for table ESTADOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ESTADOS
-- ----------------------------
ALTER TABLE [ESTADOS] ADD PRIMARY KEY ([id_estados])
GO

-- ----------------------------
-- Indexes structure for table FONDOSAHORRO
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table FONDOSAHORRO
-- ----------------------------
ALTER TABLE [FONDOSAHORRO] ADD PRIMARY KEY ([id_fondo_ahorro])
GO

-- ----------------------------
-- Indexes structure for table METODOSPAGOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table METODOSPAGOS
-- ----------------------------
ALTER TABLE [METODOSPAGOS] ADD PRIMARY KEY ([id_metodospago])
GO

-- ----------------------------
-- Indexes structure for table MOTIVODESCARTO
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table MOTIVODESCARTO
-- ----------------------------
ALTER TABLE [MOTIVODESCARTO] ADD PRIMARY KEY ([id_motivo])
GO

-- ----------------------------
-- Indexes structure for table NOMINAS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table NOMINAS
-- ----------------------------
ALTER TABLE [NOMINAS] ADD PRIMARY KEY ([id_nomina])
GO

-- ----------------------------
-- Indexes structure for table PAGOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PAGOS
-- ----------------------------
ALTER TABLE [PAGOS] ADD PRIMARY KEY ([id_pagos])
GO

-- ----------------------------
-- Indexes structure for table POLITICASBENEFICIOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table POLITICASBENEFICIOS
-- ----------------------------
ALTER TABLE [POLITICASBENEFICIOS] ADD PRIMARY KEY ([id_politica])
GO

-- ----------------------------
-- Indexes structure for table PUESTOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PUESTOS
-- ----------------------------
ALTER TABLE [PUESTOS] ADD PRIMARY KEY ([id_puesto])
GO

-- ----------------------------
-- Indexes structure for table sysdiagrams
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [sysdiagrams] ADD PRIMARY KEY ([diagram_id])
GO

-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [sysdiagrams] ADD UNIQUE ([principal_id] ASC, [name] ASC)
GO

-- ----------------------------
-- Indexes structure for table TURNOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TURNOS
-- ----------------------------
ALTER TABLE [TURNOS] ADD PRIMARY KEY ([id_turno])
GO

-- ----------------------------
-- Indexes structure for table USUARIOS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table USUARIOS
-- ----------------------------
ALTER TABLE [USUARIOS] ADD PRIMARY KEY ([username])
GO

-- ----------------------------
-- Foreign Key structure for table [EMPLEADOS]
-- ----------------------------
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([ccto]) REFERENCES [CENTROCOSTOS] ([id_ccto]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([ciudad]) REFERENCES [CIUDADES] ([id_ciudad]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([clavebanco]) REFERENCES [BANCOS] ([id_bancos]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([codahorro]) REFERENCES [FONDOSAHORRO] ([id_fondo_ahorro]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([codigopago]) REFERENCES [PAGOS] ([id_pagos]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([colonia]) REFERENCES [COLONIAS] ([id_colonia]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([depto]) REFERENCES [DEPARTAMENTOS] ([id_departamento]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([escolarid]) REFERENCES [ESCOLARIDAD] ([id_escolaridad]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([estadodir]) REFERENCES [ESTADOS] ([id_estados]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([metodop]) REFERENCES [METODOSPAGOS] ([id_metodospago]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([motivo_rechazo]) REFERENCES [MOTIVODESCARTO] ([id_motivo]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([politica]) REFERENCES [POLITICASBENEFICIOS] ([id_politica]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([puesto]) REFERENCES [PUESTOS] ([id_puesto]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([tiponom]) REFERENCES [NOMINAS] ([id_nomina]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([turno]) REFERENCES [TURNOS] ([id_turno]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [EMPLEADOS] ADD FOREIGN KEY ([user_lastupdate]) REFERENCES [USUARIOS] ([username]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
