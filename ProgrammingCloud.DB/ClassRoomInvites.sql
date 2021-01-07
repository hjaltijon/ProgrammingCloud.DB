CREATE TABLE [dbo].[ClassRoomInvites]
(
	[Email] NVARCHAR(255) NOT NULL, 
    [ClassRoomId] INT NOT NULL, 
    [CreatedDate] DATETIME2 NOT NULL,
    CONSTRAINT PK_ClassRoomInvites PRIMARY KEY (Email, ClassRoomId),
    CONSTRAINT [FK_ClassRoomInvites_ClassRooms] FOREIGN KEY ([ClassRoomId]) REFERENCES [ClassRooms]([ClassRoomId])
)

GO

CREATE INDEX [IX_ClassRoomInvites_ClassRoomId] ON [dbo].[ClassRoomInvites] ([ClassRoomId])
