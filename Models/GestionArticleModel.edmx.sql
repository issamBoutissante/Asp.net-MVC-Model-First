
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/27/2021 18:42:09
-- Generated from EDMX file: C:\Users\ISSAM\Desktop\Web Cote Serveur\TP\Atelier Pratique 9\Models\GestionArticleModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [GestionArticle];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Articles'
CREATE TABLE [dbo].[Articles] (
    [RefArticle] int IDENTITY(1,1) NOT NULL,
    [Designation] nvarchar(max)  NOT NULL,
    [NumType] int  NOT NULL
);
GO

-- Creating table 'Types'
CREATE TABLE [dbo].[Types] (
    [NumType] int IDENTITY(1,1) NOT NULL,
    [NomType] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [RefArticle] in table 'Articles'
ALTER TABLE [dbo].[Articles]
ADD CONSTRAINT [PK_Articles]
    PRIMARY KEY CLUSTERED ([RefArticle] ASC);
GO

-- Creating primary key on [NumType] in table 'Types'
ALTER TABLE [dbo].[Types]
ADD CONSTRAINT [PK_Types]
    PRIMARY KEY CLUSTERED ([NumType] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [NumType] in table 'Articles'
ALTER TABLE [dbo].[Articles]
ADD CONSTRAINT [FK_ArticleType]
    FOREIGN KEY ([NumType])
    REFERENCES [dbo].[Types]
        ([NumType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ArticleType'
CREATE INDEX [IX_FK_ArticleType]
ON [dbo].[Articles]
    ([NumType]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------