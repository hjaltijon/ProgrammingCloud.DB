CREATE TABLE [dbo].[Users]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Email] NVARCHAR(255) NOT NULL, 
    [FullName] NVARCHAR(100) NULL, 
    [UserTypeKey] VARCHAR(50) NOT NULL, 
    [PasswordHash] NVARCHAR(255) NOT NULL, 
    [Salt] NVARCHAR(255) NOT NULL
)
