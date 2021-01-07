CREATE TABLE [dbo].[PendingEmailConfirmations]
(
	[Email] INT NOT NULL PRIMARY KEY, 
    [ConfirmationToken] NVARCHAR(50) NOT NULL
)
