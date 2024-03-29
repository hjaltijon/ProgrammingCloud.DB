﻿CREATE TABLE [dbo].[Problems]
(
	[ProblemId] INT IDENTITY NOT NULL PRIMARY KEY, 
    [StudentStartingCode] NVARCHAR(4000) NULL, 
    [TestingCode] NVARCHAR(4000) NOT NULL, 
    [UserId] INT NOT NULL, 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE(),
    [Title] NVARCHAR(200) NOT NULL, 
    [Description] NVARCHAR(4000) NULL, 
    CONSTRAINT [FK_Problems_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
)

GO

CREATE INDEX [IX_Problems_UserId] ON [dbo].[Problems] ([UserId])