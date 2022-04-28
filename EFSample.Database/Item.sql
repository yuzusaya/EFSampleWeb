CREATE TABLE [dbo].[Item]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(MAX) NULL, 
    [Price] DECIMAL(18, 2) NULL, 
    [CategoryId] INT NULL, 
    CONSTRAINT [FK_Item_ToCategories] FOREIGN KEY ([CategoryId]) REFERENCES [Categories]([Id])
)

GO

CREATE INDEX [IX_Item_CategoryId] ON [dbo].[Item] ([CategoryId])

--Id,Name,Price,CategoryId
--1,'a',20,2,
--2,'a',20,1,
--3,'a',20,2,

--Id,Name,Price,CategoryId
--2,'a',20,1,
--1,'a',20,2,
--3,'a',20,2,