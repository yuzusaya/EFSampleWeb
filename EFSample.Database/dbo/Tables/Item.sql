CREATE TABLE [dbo].[Item] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (MAX)  NULL,
    [Price]      DECIMAL (18, 2) NULL,
    [CategoryId] INT             NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Item_ToCategories] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Item_CategoryId]
    ON [dbo].[Item]([CategoryId] ASC);

