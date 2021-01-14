CREATE TABLE [dbo].[ClassroomInvites]
(
    [UserId] INT NOT NULL,
    [ClassroomId] INT NOT NULL, 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_ClassroomInvites PRIMARY KEY (UserId, [ClassroomId]),
    CONSTRAINT [FK_ClassroomInvites_ClassRooms] FOREIGN KEY ([ClassroomId]) REFERENCES [Classrooms]([ClassroomId]),
    CONSTRAINT [FK_ClassroomInvites_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
)

GO

CREATE INDEX [IX_ClassRoomInvites_ClassroomId] ON [dbo].[ClassroomInvites] ([ClassroomId])