
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/18/2018 14:40:06
-- Generated from EDMX file: C:\Users\monica\source\repos\EvaluacionWebApp\EvaluacionWebApp.Logica\ModeloEntidades\db_nutricionEntity.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [db_nutricion];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_EVALUACIONES_REQUERIMIENTOS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Requerimientos] DROP CONSTRAINT [FK_EVALUACIONES_REQUERIMIENTOS];
GO
IF OBJECT_ID(N'[dbo].[FK_PACIENTES_EVALUACIONES]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Evaluaciones] DROP CONSTRAINT [FK_PACIENTES_EVALUACIONES];
GO
IF OBJECT_ID(N'[dbo].[FK_ROLES_USUARIOS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_ROLES_USUARIOS];
GO
IF OBJECT_ID(N'[dbo].[FK_USUARIO_PACIENTES]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pacientes] DROP CONSTRAINT [FK_USUARIO_PACIENTES];
GO
IF OBJECT_ID(N'[dbo].[FK_USUARIOS_EVALUACIONES]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Evaluaciones] DROP CONSTRAINT [FK_USUARIOS_EVALUACIONES];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Evaluaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Evaluaciones];
GO
IF OBJECT_ID(N'[dbo].[Pacientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pacientes];
GO
IF OBJECT_ID(N'[dbo].[Requerimientos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Requerimientos];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[Usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Evaluaciones'
CREATE TABLE [dbo].[Evaluaciones] (
    [id_evaluacion] int IDENTITY(1,1) NOT NULL,
    [fecha] varchar(15)  NULL,
    [peso_antr] varchar(8)  NULL,
    [talla_antr] varchar(8)  NULL,
    [imc_antr] varchar(8)  NULL,
    [peso_ideal_antr] varchar(8)  NULL,
    [factor_peso_antr] varchar(8)  NULL,
    [cb_corp] varchar(8)  NULL,
    [pt_corp] varchar(8)  NULL,
    [pb_corp] varchar(8)  NULL,
    [psi_corp] varchar(8)  NULL,
    [pse_corp] varchar(8)  NULL,
    [pliegues_corp] varchar(8)  NULL,
    [cc_corp] varchar(8)  NULL,
    [carpo_corp] varchar(8)  NULL,
    [cmb_corp] varchar(8)  NULL,
    [amb_corp] varchar(8)  NULL,
    [agb_corp] varchar(8)  NULL,
    [albumina] varchar(8)  NULL,
    [creatinina] varchar(8)  NULL,
    [balance_hidrico] varchar(8)  NULL,
    [pco2] varchar(8)  NULL,
    [pafi] varchar(8)  NULL,
    [leucocitos] varchar(8)  NULL,
    [pc_reactiva] varchar(8)  NULL,
    [hemoglobina] varchar(8)  NULL,
    [hematrocito] varchar(8)  NULL,
    [trigliceridos] varchar(8)  NULL,
    [glicemia] varchar(8)  NULL,
    [lactato] varchar(8)  NULL,
    [urea] varchar(8)  NULL,
    [otros_examenes] varchar(100)  NULL,
    [diagnostico_nutricional] varchar(50)  NULL,
    [meta_nutricional] varchar(100)  NULL,
    [observaciones] varchar(100)  NULL,
    [id_paciente] int  NOT NULL,
    [id_usuario] int  NOT NULL
);
GO

-- Creating table 'Pacientes'
CREATE TABLE [dbo].[Pacientes] (
    [id_paciente] int IDENTITY(1,1) NOT NULL,
    [nombre] varchar(25)  NULL,
    [apepat] varchar(25)  NULL,
    [apemat] varchar(25)  NULL,
    [rut] int  NULL,
    [edad] int  NULL,
    [sexo] char(1)  NULL,
    [diagnostico] varchar(50)  NULL,
    [ficha_medica] int  NULL,
    [estado] varchar(8)  NULL,
    [fecha_creacion] datetime  NULL,
    [id_usuario] int  NOT NULL
);
GO

-- Creating table 'Requerimientos'
CREATE TABLE [dbo].[Requerimientos] (
    [id_requerimiento] int IDENTITY(1,1) NOT NULL,
    [tipo] varchar(7)  NULL,
    [requerimiento] varchar(8)  NULL,
    [energia] varchar(8)  NULL,
    [proteina] varchar(8)  NULL,
    [factor_kcal] varchar(8)  NULL,
    [factor_prot] varchar(8)  NULL,
    [cho_porc] varchar(8)  NULL,
    [cho_gr] varchar(8)  NULL,
    [lip_porc] varchar(8)  NULL,
    [lip_gr] varchar(8)  NULL,
    [id_evaluacion] int  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [id_rol] int IDENTITY(1,1) NOT NULL,
    [rol] varchar(25)  NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [id_usuario] int IDENTITY(1,1) NOT NULL,
    [rut] int  NULL,
    [nombre] varchar(25)  NULL,
    [apepat] varchar(25)  NULL,
    [apemat] varchar(25)  NULL,
    [estado] varchar(8)  NULL,
    [fecha_creacion] datetime  NULL,
    [login] varchar(8)  NOT NULL,
    [contraseña] varbinary(8000)  NOT NULL,
    [id_rol] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_evaluacion] in table 'Evaluaciones'
ALTER TABLE [dbo].[Evaluaciones]
ADD CONSTRAINT [PK_Evaluaciones]
    PRIMARY KEY CLUSTERED ([id_evaluacion] ASC);
GO

-- Creating primary key on [id_paciente] in table 'Pacientes'
ALTER TABLE [dbo].[Pacientes]
ADD CONSTRAINT [PK_Pacientes]
    PRIMARY KEY CLUSTERED ([id_paciente] ASC);
GO

-- Creating primary key on [id_requerimiento] in table 'Requerimientos'
ALTER TABLE [dbo].[Requerimientos]
ADD CONSTRAINT [PK_Requerimientos]
    PRIMARY KEY CLUSTERED ([id_requerimiento] ASC);
GO

-- Creating primary key on [id_rol] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([id_rol] ASC);
GO

-- Creating primary key on [id_usuario] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([id_usuario] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [id_evaluacion] in table 'Requerimientos'
ALTER TABLE [dbo].[Requerimientos]
ADD CONSTRAINT [FK_EVALUACIONES_REQUERIMIENTOS]
    FOREIGN KEY ([id_evaluacion])
    REFERENCES [dbo].[Evaluaciones]
        ([id_evaluacion])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EVALUACIONES_REQUERIMIENTOS'
CREATE INDEX [IX_FK_EVALUACIONES_REQUERIMIENTOS]
ON [dbo].[Requerimientos]
    ([id_evaluacion]);
GO

-- Creating foreign key on [id_paciente] in table 'Evaluaciones'
ALTER TABLE [dbo].[Evaluaciones]
ADD CONSTRAINT [FK_PACIENTES_EVALUACIONES]
    FOREIGN KEY ([id_paciente])
    REFERENCES [dbo].[Pacientes]
        ([id_paciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PACIENTES_EVALUACIONES'
CREATE INDEX [IX_FK_PACIENTES_EVALUACIONES]
ON [dbo].[Evaluaciones]
    ([id_paciente]);
GO

-- Creating foreign key on [id_usuario] in table 'Evaluaciones'
ALTER TABLE [dbo].[Evaluaciones]
ADD CONSTRAINT [FK_USUARIOS_EVALUACIONES]
    FOREIGN KEY ([id_usuario])
    REFERENCES [dbo].[Usuarios]
        ([id_usuario])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_USUARIOS_EVALUACIONES'
CREATE INDEX [IX_FK_USUARIOS_EVALUACIONES]
ON [dbo].[Evaluaciones]
    ([id_usuario]);
GO

-- Creating foreign key on [id_usuario] in table 'Pacientes'
ALTER TABLE [dbo].[Pacientes]
ADD CONSTRAINT [FK_USUARIO_PACIENTES]
    FOREIGN KEY ([id_usuario])
    REFERENCES [dbo].[Usuarios]
        ([id_usuario])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_USUARIO_PACIENTES'
CREATE INDEX [IX_FK_USUARIO_PACIENTES]
ON [dbo].[Pacientes]
    ([id_usuario]);
GO

-- Creating foreign key on [id_rol] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [FK_ROLES_USUARIOS]
    FOREIGN KEY ([id_rol])
    REFERENCES [dbo].[Roles]
        ([id_rol])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ROLES_USUARIOS'
CREATE INDEX [IX_FK_ROLES_USUARIOS]
ON [dbo].[Usuarios]
    ([id_rol]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------