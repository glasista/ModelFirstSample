 
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/26/2020 21:37:17
-- Generated from EDMX file: D:\Praca dyplomowa\ćwiczenia labolatoryjne\1\ModelFirstSample\ModelFirstSample.DB\MoviesModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ModelFirstSample];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ActorActorMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActorMovies] DROP CONSTRAINT [FK_ActorActorMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_MovieActorMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActorMovies] DROP CONSTRAINT [FK_MovieActorMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_MovieCategoryMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CategoryMovies] DROP CONSTRAINT [FK_MovieCategoryMovie];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryCategoryMovie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CategoryMovies] DROP CONSTRAINT [FK_CategoryCategoryMovie];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Actors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Actors];
GO
IF OBJECT_ID(N'[dbo].[Movies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Movies];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[ActorMovies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActorMovies];
GO
IF OBJECT_ID(N'[dbo].[CategoryMovies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategoryMovies];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Actors'
CREATE TABLE [dbo].[Actors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Surname] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Movies'
CREATE TABLE [dbo].[Movies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [DateOfPublication] nvarchar(max)  NOT NULL,
    [Property1] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ActorMovies'
CREATE TABLE [dbo].[ActorMovies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MovieId] int  NOT NULL,
    [ActorId] int  NOT NULL,
    [MovieId1] int  NOT NULL
);
GO

-- Creating table 'CategoryMovies'
CREATE TABLE [dbo].[CategoryMovies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MovieId] int  NOT NULL,
    [CategoryId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Actors'
ALTER TABLE [dbo].[Actors]
ADD CONSTRAINT [PK_Actors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Movies'
ALTER TABLE [dbo].[Movies]
ADD CONSTRAINT [PK_Movies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ActorMovies'
ALTER TABLE [dbo].[ActorMovies]
ADD CONSTRAINT [PK_ActorMovies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CategoryMovies'
ALTER TABLE [dbo].[CategoryMovies]
ADD CONSTRAINT [PK_CategoryMovies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ActorId] in table 'ActorMovies'
ALTER TABLE [dbo].[ActorMovies]
ADD CONSTRAINT [FK_ActorActorMovie]
    FOREIGN KEY ([ActorId])
    REFERENCES [dbo].[Actors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActorActorMovie'
CREATE INDEX [IX_FK_ActorActorMovie]
ON [dbo].[ActorMovies]
    ([ActorId]);
GO

-- Creating foreign key on [MovieId1] in table 'ActorMovies'
ALTER TABLE [dbo].[ActorMovies]
ADD CONSTRAINT [FK_MovieActorMovie]
    FOREIGN KEY ([MovieId1])
    REFERENCES [dbo].[Movies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MovieActorMovie'
CREATE INDEX [IX_FK_MovieActorMovie]
ON [dbo].[ActorMovies]
    ([MovieId1]);
GO

-- Creating foreign key on [MovieId] in table 'CategoryMovies'
ALTER TABLE [dbo].[CategoryMovies]
ADD CONSTRAINT [FK_MovieCategoryMovie]
    FOREIGN KEY ([MovieId])
    REFERENCES [dbo].[Movies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MovieCategoryMovie'
CREATE INDEX [IX_FK_MovieCategoryMovie]
ON [dbo].[CategoryMovies]
    ([MovieId]);
GO

-- Creating foreign key on [CategoryId] in table 'CategoryMovies'
ALTER TABLE [dbo].[CategoryMovies]
ADD CONSTRAINT [FK_CategoryCategoryMovie]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryCategoryMovie'
CREATE INDEX [IX_FK_CategoryCategoryMovie]
ON [dbo].[CategoryMovies]
    ([CategoryId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------