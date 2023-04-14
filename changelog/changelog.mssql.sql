-- liquibase formatted sql

-- changeset jhderojas:1
DROP TABLE [dbo].[ToDos];
GO

-- changeset jhderojas:2
CREATE TABLE [dbo].[ToDos](
	[id] [uniqueidentifier] NOT NULL,
	[description] [nchar](100) NOT NULL,
	[completed] [bit] NOT NULL,
	[date] [bigint] NOT NULL
) ON [PRIMARY];
GO

-- changeset jhderojas:1
ALTER TABLE [dbo].[ToDos] ADD  CONSTRAINT [DF_Todo_completed]  DEFAULT ((0)) FOR [completed];
GO
