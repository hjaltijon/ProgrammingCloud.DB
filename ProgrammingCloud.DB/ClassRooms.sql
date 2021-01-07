CREATE TABLE [dbo].[ClassRooms]
(
	[ClassRoomId] INT IDENTITY NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(200) NOT NULL, 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE(), 
    [TeacherId] INT NOT NULL, 
    CONSTRAINT [FK_Classes_Users] FOREIGN KEY ([TeacherId]) REFERENCES [Users]([UserId])
)

GO

CREATE INDEX [IX_ClassRooms_TeacherId] ON [dbo].[ClassRooms] ([TeacherId])
