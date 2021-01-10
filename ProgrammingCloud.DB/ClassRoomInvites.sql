CREATE TABLE [dbo].[ClassRoomInvites]
(
    [UserId] INT NOT NULL,
    [ClassRoomId] INT NOT NULL, 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_ClassRoomInvites PRIMARY KEY (UserId, ClassRoomId),
    CONSTRAINT [FK_ClassRoomInvites_ClassRooms] FOREIGN KEY ([ClassRoomId]) REFERENCES [ClassRooms]([ClassRoomId]),
    CONSTRAINT [FK_ClassRoomInvites_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
)

GO

CREATE INDEX [IX_ClassRoomInvites_ClassRoomId] ON [dbo].[ClassRoomInvites] ([ClassRoomId])