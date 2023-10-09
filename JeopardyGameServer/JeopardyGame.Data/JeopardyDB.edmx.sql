
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/06/2023 12:11:34
-- Generated from EDMX file: C:\Users\wachi\OneDrive\Documentos\GitHub\JeopardyTecnologias\JeopardyGameServer\JeopardyGame.Data\JeopardyDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Jeopardy];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AvatarAvatarPlayer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AvatarPlayers] DROP CONSTRAINT [FK_AvatarAvatarPlayer];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryAwnser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Awnsers] DROP CONSTRAINT [FK_CategoryAwnser];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryBoard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Boards] DROP CONSTRAINT [FK_CategoryBoard];
GO
IF OBJECT_ID(N'[dbo].[FK_GameBoard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Boards] DROP CONSTRAINT [FK_GameBoard];
GO
IF OBJECT_ID(N'[dbo].[FK_GameGamePlayer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GamePlayers] DROP CONSTRAINT [FK_GameGamePlayer];
GO
IF OBJECT_ID(N'[dbo].[FK_HostGame]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Games] DROP CONSTRAINT [FK_HostGame];
GO
IF OBJECT_ID(N'[dbo].[FK_PlayerAvatarPlayer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AvatarPlayers] DROP CONSTRAINT [FK_PlayerAvatarPlayer];
GO
IF OBJECT_ID(N'[dbo].[FK_PlayerBaneo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Baneos] DROP CONSTRAINT [FK_PlayerBaneo];
GO
IF OBJECT_ID(N'[dbo].[FK_PlayerFriends]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Friends] DROP CONSTRAINT [FK_PlayerFriends];
GO
IF OBJECT_ID(N'[dbo].[FK_PlayerFriends1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Friends] DROP CONSTRAINT [FK_PlayerFriends1];
GO
IF OBJECT_ID(N'[dbo].[FK_PlayerGamePlayer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GamePlayers] DROP CONSTRAINT [FK_PlayerGamePlayer];
GO
IF OBJECT_ID(N'[dbo].[FK_QuestionAwnser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Awnsers] DROP CONSTRAINT [FK_QuestionAwnser];
GO
IF OBJECT_ID(N'[dbo].[FK_StatePlayer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Players] DROP CONSTRAINT [FK_StatePlayer];
GO
IF OBJECT_ID(N'[dbo].[FK_UserPlayer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Players] DROP CONSTRAINT [FK_UserPlayer];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AvatarPlayers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AvatarPlayers];
GO
IF OBJECT_ID(N'[dbo].[Avatars]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Avatars];
GO
IF OBJECT_ID(N'[dbo].[Awnsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Awnsers];
GO
IF OBJECT_ID(N'[dbo].[Baneos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Baneos];
GO
IF OBJECT_ID(N'[dbo].[Boards]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Boards];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Friends]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Friends];
GO
IF OBJECT_ID(N'[dbo].[GamePlayers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GamePlayers];
GO
IF OBJECT_ID(N'[dbo].[Games]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Games];
GO
IF OBJECT_ID(N'[dbo].[Hosts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Hosts];
GO
IF OBJECT_ID(N'[dbo].[Players]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Players];
GO
IF OBJECT_ID(N'[dbo].[Questions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Questions];
GO
IF OBJECT_ID(N'[dbo].[States]', 'U') IS NOT NULL
    DROP TABLE [dbo].[States];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AvatarPlayers'
CREATE TABLE [dbo].[AvatarPlayers] (
    [IdAvatarPlayer] int IDENTITY(1,1) NOT NULL,
    [Avatar_IdAvatar] int  NOT NULL,
    [Player_IdPlayer] int  NOT NULL
);
GO

-- Creating table 'Avatars'
CREATE TABLE [dbo].[Avatars] (
    [IdAvatar] int IDENTITY(1,1) NOT NULL,
    [AvatarName] nvarchar(15)  NOT NULL,
    [imageAvatar] varbinary(max)  NOT NULL
);
GO

-- Creating table 'Awnsers'
CREATE TABLE [dbo].[Awnsers] (
    [IdAwnser] int IDENTITY(1,1) NOT NULL,
    [SpanishAwnserDescription] nvarchar(40)  NOT NULL,
    [EnglichAwnserDescription] nvarchar(40)  NOT NULL,
    [Question_IdQuestion] int  NOT NULL,
    [Category_IdCategory] int  NOT NULL
);
GO

-- Creating table 'Baneos'
CREATE TABLE [dbo].[Baneos] (
    [IdBaneo] int IDENTITY(1,1) NOT NULL,
    [BanTimeBegin] datetime  NULL,
    [BanTimeFinish] datetime  NULL,
    [Player_IdPlayer] int  NOT NULL
);
GO

-- Creating table 'Boards'
CREATE TABLE [dbo].[Boards] (
    [idBoard] int IDENTITY(1,1) NOT NULL,
    [Game_RoomCode] nchar(6)  NOT NULL,
    [Category_IdCategory] int  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [IdCategory] int IDENTITY(1,1) NOT NULL,
    [SpanishCategoryDescription] nvarchar(40)  NOT NULL,
    [EnglishCategoryDescription] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'Friends'
CREATE TABLE [dbo].[Friends] (
    [IdFrineds] int IDENTITY(1,1) NOT NULL,
    [Player_IdPlayer] int  NOT NULL,
    [PlayerFriend_IdPlayer] int  NOT NULL
);
GO

-- Creating table 'GamePlayers'
CREATE TABLE [dbo].[GamePlayers] (
    [IdGamePlayer] int IDENTITY(1,1) NOT NULL,
    [PointsInGame] bigint  NOT NULL,
    [PlaceInGame] smallint  NOT NULL,
    [Game_RoomCode] nchar(6)  NOT NULL,
    [Player_IdPlayer] int  NOT NULL
);
GO

-- Creating table 'Games'
CREATE TABLE [dbo].[Games] (
    [RoomCode] nchar(6)  NOT NULL,
    [Host_IdHost] int  NOT NULL
);
GO

-- Creating table 'Hosts'
CREATE TABLE [dbo].[Hosts] (
    [IdHost] int IDENTITY(1,1) NOT NULL,
    [HostName] nvarchar(15)  NULL,
    [ImageHost] varbinary(max)  NOT NULL
);
GO

-- Creating table 'Players'
CREATE TABLE [dbo].[Players] (
    [IdPlayer] int IDENTITY(1,1) NOT NULL,
    [GeneralPoints] bigint  NULL,
    [NoReports] bigint  NOT NULL,
    [State_idState] int  NULL,
    [IdAvatarActual] int  NULL,
    [User_IdUser] int  NOT NULL
);
GO

-- Creating table 'Questions'
CREATE TABLE [dbo].[Questions] (
    [IdQuestion] int IDENTITY(1,1) NOT NULL,
    [SpanishQuestionDescription] nvarchar(70)  NOT NULL,
    [EnglishQuestionDescription] nvarchar(70)  NOT NULL,
    [RigthAwnser] nvarchar(30)  NOT NULL,
    [ValueWorth] int  NULL
);
GO

-- Creating table 'States'
CREATE TABLE [dbo].[States] (
    [IdState] int IDENTITY(1,1) NOT NULL,
    [StateDescription] nvarchar(30)  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [IdUser] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(15)  NOT NULL,
    [EmailAddress] nvarchar(90)  NOT NULL,
    [Password] nvarchar(30)  NOT NULL,
    [Name] nvarchar(30)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdAvatarPlayer] in table 'AvatarPlayers'
ALTER TABLE [dbo].[AvatarPlayers]
ADD CONSTRAINT [PK_AvatarPlayers]
    PRIMARY KEY CLUSTERED ([IdAvatarPlayer] ASC);
GO

-- Creating primary key on [IdAvatar] in table 'Avatars'
ALTER TABLE [dbo].[Avatars]
ADD CONSTRAINT [PK_Avatars]
    PRIMARY KEY CLUSTERED ([IdAvatar] ASC);
GO

-- Creating primary key on [IdAwnser] in table 'Awnsers'
ALTER TABLE [dbo].[Awnsers]
ADD CONSTRAINT [PK_Awnsers]
    PRIMARY KEY CLUSTERED ([IdAwnser] ASC);
GO

-- Creating primary key on [IdBaneo] in table 'Baneos'
ALTER TABLE [dbo].[Baneos]
ADD CONSTRAINT [PK_Baneos]
    PRIMARY KEY CLUSTERED ([IdBaneo] ASC);
GO

-- Creating primary key on [idBoard] in table 'Boards'
ALTER TABLE [dbo].[Boards]
ADD CONSTRAINT [PK_Boards]
    PRIMARY KEY CLUSTERED ([idBoard] ASC);
GO

-- Creating primary key on [IdCategory] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([IdCategory] ASC);
GO

-- Creating primary key on [IdFrineds] in table 'Friends'
ALTER TABLE [dbo].[Friends]
ADD CONSTRAINT [PK_Friends]
    PRIMARY KEY CLUSTERED ([IdFrineds] ASC);
GO

-- Creating primary key on [IdGamePlayer] in table 'GamePlayers'
ALTER TABLE [dbo].[GamePlayers]
ADD CONSTRAINT [PK_GamePlayers]
    PRIMARY KEY CLUSTERED ([IdGamePlayer] ASC);
GO

-- Creating primary key on [RoomCode] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [PK_Games]
    PRIMARY KEY CLUSTERED ([RoomCode] ASC);
GO

-- Creating primary key on [IdHost] in table 'Hosts'
ALTER TABLE [dbo].[Hosts]
ADD CONSTRAINT [PK_Hosts]
    PRIMARY KEY CLUSTERED ([IdHost] ASC);
GO

-- Creating primary key on [IdPlayer] in table 'Players'
ALTER TABLE [dbo].[Players]
ADD CONSTRAINT [PK_Players]
    PRIMARY KEY CLUSTERED ([IdPlayer] ASC);
GO

-- Creating primary key on [IdQuestion] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [PK_Questions]
    PRIMARY KEY CLUSTERED ([IdQuestion] ASC);
GO

-- Creating primary key on [IdState] in table 'States'
ALTER TABLE [dbo].[States]
ADD CONSTRAINT [PK_States]
    PRIMARY KEY CLUSTERED ([IdState] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [IdUser] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([IdUser] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Avatar_IdAvatar] in table 'AvatarPlayers'
ALTER TABLE [dbo].[AvatarPlayers]
ADD CONSTRAINT [FK_AvatarAvatarPlayer]
    FOREIGN KEY ([Avatar_IdAvatar])
    REFERENCES [dbo].[Avatars]
        ([IdAvatar])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AvatarAvatarPlayer'
CREATE INDEX [IX_FK_AvatarAvatarPlayer]
ON [dbo].[AvatarPlayers]
    ([Avatar_IdAvatar]);
GO

-- Creating foreign key on [Player_IdPlayer] in table 'AvatarPlayers'
ALTER TABLE [dbo].[AvatarPlayers]
ADD CONSTRAINT [FK_PlayerAvatarPlayer]
    FOREIGN KEY ([Player_IdPlayer])
    REFERENCES [dbo].[Players]
        ([IdPlayer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayerAvatarPlayer'
CREATE INDEX [IX_FK_PlayerAvatarPlayer]
ON [dbo].[AvatarPlayers]
    ([Player_IdPlayer]);
GO

-- Creating foreign key on [Category_IdCategory] in table 'Awnsers'
ALTER TABLE [dbo].[Awnsers]
ADD CONSTRAINT [FK_CategoryAwnser]
    FOREIGN KEY ([Category_IdCategory])
    REFERENCES [dbo].[Categories]
        ([IdCategory])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryAwnser'
CREATE INDEX [IX_FK_CategoryAwnser]
ON [dbo].[Awnsers]
    ([Category_IdCategory]);
GO

-- Creating foreign key on [Question_IdQuestion] in table 'Awnsers'
ALTER TABLE [dbo].[Awnsers]
ADD CONSTRAINT [FK_QuestionAwnser]
    FOREIGN KEY ([Question_IdQuestion])
    REFERENCES [dbo].[Questions]
        ([IdQuestion])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestionAwnser'
CREATE INDEX [IX_FK_QuestionAwnser]
ON [dbo].[Awnsers]
    ([Question_IdQuestion]);
GO

-- Creating foreign key on [Player_IdPlayer] in table 'Baneos'
ALTER TABLE [dbo].[Baneos]
ADD CONSTRAINT [FK_PlayerBaneo]
    FOREIGN KEY ([Player_IdPlayer])
    REFERENCES [dbo].[Players]
        ([IdPlayer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayerBaneo'
CREATE INDEX [IX_FK_PlayerBaneo]
ON [dbo].[Baneos]
    ([Player_IdPlayer]);
GO

-- Creating foreign key on [Category_IdCategory] in table 'Boards'
ALTER TABLE [dbo].[Boards]
ADD CONSTRAINT [FK_CategoryBoard]
    FOREIGN KEY ([Category_IdCategory])
    REFERENCES [dbo].[Categories]
        ([IdCategory])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryBoard'
CREATE INDEX [IX_FK_CategoryBoard]
ON [dbo].[Boards]
    ([Category_IdCategory]);
GO

-- Creating foreign key on [Game_RoomCode] in table 'Boards'
ALTER TABLE [dbo].[Boards]
ADD CONSTRAINT [FK_GameBoard]
    FOREIGN KEY ([Game_RoomCode])
    REFERENCES [dbo].[Games]
        ([RoomCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GameBoard'
CREATE INDEX [IX_FK_GameBoard]
ON [dbo].[Boards]
    ([Game_RoomCode]);
GO

-- Creating foreign key on [Player_IdPlayer] in table 'Friends'
ALTER TABLE [dbo].[Friends]
ADD CONSTRAINT [FK_PlayerFriends]
    FOREIGN KEY ([Player_IdPlayer])
    REFERENCES [dbo].[Players]
        ([IdPlayer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayerFriends'
CREATE INDEX [IX_FK_PlayerFriends]
ON [dbo].[Friends]
    ([Player_IdPlayer]);
GO

-- Creating foreign key on [PlayerFriend_IdPlayer] in table 'Friends'
ALTER TABLE [dbo].[Friends]
ADD CONSTRAINT [FK_PlayerFriends1]
    FOREIGN KEY ([PlayerFriend_IdPlayer])
    REFERENCES [dbo].[Players]
        ([IdPlayer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayerFriends1'
CREATE INDEX [IX_FK_PlayerFriends1]
ON [dbo].[Friends]
    ([PlayerFriend_IdPlayer]);
GO

-- Creating foreign key on [Game_RoomCode] in table 'GamePlayers'
ALTER TABLE [dbo].[GamePlayers]
ADD CONSTRAINT [FK_GameGamePlayer]
    FOREIGN KEY ([Game_RoomCode])
    REFERENCES [dbo].[Games]
        ([RoomCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GameGamePlayer'
CREATE INDEX [IX_FK_GameGamePlayer]
ON [dbo].[GamePlayers]
    ([Game_RoomCode]);
GO

-- Creating foreign key on [Player_IdPlayer] in table 'GamePlayers'
ALTER TABLE [dbo].[GamePlayers]
ADD CONSTRAINT [FK_PlayerGamePlayer]
    FOREIGN KEY ([Player_IdPlayer])
    REFERENCES [dbo].[Players]
        ([IdPlayer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayerGamePlayer'
CREATE INDEX [IX_FK_PlayerGamePlayer]
ON [dbo].[GamePlayers]
    ([Player_IdPlayer]);
GO

-- Creating foreign key on [Host_IdHost] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [FK_HostGame]
    FOREIGN KEY ([Host_IdHost])
    REFERENCES [dbo].[Hosts]
        ([IdHost])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HostGame'
CREATE INDEX [IX_FK_HostGame]
ON [dbo].[Games]
    ([Host_IdHost]);
GO

-- Creating foreign key on [State_idState] in table 'Players'
ALTER TABLE [dbo].[Players]
ADD CONSTRAINT [FK_StatePlayer]
    FOREIGN KEY ([State_idState])
    REFERENCES [dbo].[States]
        ([IdState])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StatePlayer'
CREATE INDEX [IX_FK_StatePlayer]
ON [dbo].[Players]
    ([State_idState]);
GO

-- Creating foreign key on [User_IdUser] in table 'Players'
ALTER TABLE [dbo].[Players]
ADD CONSTRAINT [FK_UserPlayer]
    FOREIGN KEY ([User_IdUser])
    REFERENCES [dbo].[Users]
        ([IdUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserPlayer'
CREATE INDEX [IX_FK_UserPlayer]
ON [dbo].[Players]
    ([User_IdUser]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------