CREATE TABLE [dbo].[Users]
(
	[UserId] INT IDENTITY NOT NULL PRIMARY KEY, 
    [Email] NVARCHAR(255) NOT NULL, 
    [FullName] NVARCHAR(100) NULL, 
    [UserTypeKey] VARCHAR(50) NULL, 
    [PasswordHash] NVARCHAR(100) NULL, 
    [Salt] NVARCHAR(255) NULL, 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT GETDATE(), 
    [IsEmailVerified] BIT NOT NULL, 
    [VerifyEmailTokenHash] NVARCHAR(100) NULL, 
    [VerifyEmailTokenCreatedDate] DATETIME2 NULL
)


GO

CREATE UNIQUE INDEX UN_Users_Email ON Users (Email)
