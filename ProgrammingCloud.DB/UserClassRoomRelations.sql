CREATE TABLE [dbo].[UserClassRoomRelations]
(
	[UserId] INT NOT NULL, 
    [ClassRoomId] INT NOT NULL,
	[CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT PK_UserClassRoomRelations PRIMARY KEY (UserId, ClassRoomId),
	CONSTRAINT [FK_UserClassRoomRelations_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId]),
	CONSTRAINT [FK_UserClassRoomRelations_Classes] FOREIGN KEY ([ClassRoomId]) REFERENCES [ClassRooms]([ClassRoomId])
)

GO

CREATE INDEX [IX_UserClassRelations_ClassId] ON [dbo].[UserClassRoomRelations] ([ClassRoomId])
