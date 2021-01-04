CREATE TABLE [dbo].[Classes]
(
	[ClassId] INT NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(200) NOT NULL, 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE(), 
    [TeacherId] INT NOT NULL, 
    CONSTRAINT [FK_Classes_Users] FOREIGN KEY ([TeacherId]) REFERENCES [Users]([UserId])
)
