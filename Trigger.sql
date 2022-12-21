USE [Test]
GO

/****** Object:  DdlTrigger [bruh]    Script Date: 12/22/2022 12:37:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [bruh]
on database 
for 
  drop_table
as
print 'drob table is forbidden'
rollback;
GO

ENABLE TRIGGER [bruh] ON DATABASE
GO


