CREATE TABLE [dbo].[ProblemClassroomRelations]
(
	[ClassroomId] INT NOT NULL, 
    [ProblemId] INT NOT NULL, 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_ProblemClassroomRelations PRIMARY KEY (ClassroomId, ProblemId),
	CONSTRAINT [FK_ProblemClassroomRelations_Users] FOREIGN KEY ([ProblemId]) REFERENCES [Problems]([ProblemId]),
	CONSTRAINT [FK_ProblemClassroomRelations_Classes] FOREIGN KEY ([ClassroomId]) REFERENCES [Classrooms]([ClassroomId])
)

GO

CREATE INDEX [IX_ProblemClassroomRelations_ProblemId] ON [dbo].[ProblemClassroomRelations] ([ProblemId])