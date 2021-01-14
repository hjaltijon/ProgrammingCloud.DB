CREATE TABLE [dbo].[UserClassroomRelations]
(
	[UserId] INT NOT NULL, 
    [ClassroomId] INT NOT NULL,
	[CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT PK_UserClassroomRelations PRIMARY KEY (UserId, ClassroomId),
	CONSTRAINT [FK_UserClassroomRelations_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId]),
	CONSTRAINT [FK_UserClassroomRelations_Classes] FOREIGN KEY ([ClassroomId]) REFERENCES [Classrooms]([ClassroomId])
)

GO

CREATE INDEX [IX_UserClassroomRelations_ClassroomId] ON [dbo].[UserClassroomRelations] ([ClassroomId])
