﻿CREATE TABLE [dbo].[Users]
(
	[UserId] INT NOT NULL PRIMARY KEY, 
    [Email] NVARCHAR(255) NOT NULL, 
    [FullName] NVARCHAR(100) NULL, 
    [UserTypeKey] VARCHAR(50) NOT NULL, 
    [PasswordHash] NVARCHAR(255) NOT NULL, 
    [Salt] NVARCHAR(255) NOT NULL, 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE()
)



GO

CREATE UNIQUE INDEX UN_Users_Email ON Users (Email)
