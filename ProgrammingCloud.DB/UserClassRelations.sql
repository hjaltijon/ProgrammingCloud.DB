CREATE TABLE [dbo].[UserClassRelations]
(
	[UserId] INT NOT NULL, 
    [ClassId] INT NOT NULL,
	CONSTRAINT PK_UserClassRelations PRIMARY KEY (UserId, ClassId)
)

GO

CREATE INDEX [IX_UserClassRelations_ClassId] ON [dbo].[UserClassRelations] ([ClassId])
