USE [Curso]

DROP TABLE [Aluno]

CREATE TABLE [Aluno](
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(180) NOT NULL UNIQUE,
    [Nascimento] DATETIME NULL,
    [Active] BIT NOT NULL DEFAULT(0),

    PRIMARY KEY ([id])
)
GO

ALTER TABLE [ALuno]
    ADD [Document] NVARCHAR(11)

ALTER TABLE [Aluno]
    DROP COLUMN [Document]

ALTER TABLE [Aluno]
    ALTER COLUMN [Document] CHAR(11)

SELECT TOP 100
    *
FROM 
    [Curso]
WHERE
    [Id] BETWEEN '2020-03-01 00:00:00' AND '2020-03-31 23:59:00'


CREATE OR ALTER PROCEDURE [spListCourse] 
    @Category NVARCHAR(60)
AS

    DECLARE @CategoryId INT
    SET @CategoryId = (SELECT TOP 1 [Id] FROM [Categoria] WHERE [Nome] = @Category)
    SELECT * FROM [Curso] WHERE [CategoriaId] = @CategoryId

EXEC [spListCourse] 'Data'

DROP PROCEDURE [spListCourse]



