-- liquibase formatted sql

-- changeset jhderojas:1
CREATE TABLE [dbo].[Todo](
	[id] [uniqueidentifier] NOT NULL,
	[description] [nchar](100) NOT NULL,
	[completed] [bit] NOT NULL,
	[date] [bigint] NOT NULL
) ON [PRIMARY]

-- changeset jhderojas:2
ALTER TABLE [dbo].[Todo] ADD  CONSTRAINT [DF_Todo_completed]  DEFAULT ((0)) FOR [completed]
