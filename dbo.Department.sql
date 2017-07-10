CREATE TABLE [dbo].[Department] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [Title]             NVARCHAR (MAX) NOT NULL,
    [City]              NCHAR (50)     NOT NULL,
    [Addess]            NCHAR (50)     NOT NULL,
    [NumberOfEmployees] SMALLINT       NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

