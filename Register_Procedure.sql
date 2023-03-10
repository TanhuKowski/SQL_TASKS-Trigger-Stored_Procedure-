USE [ASP_Login]
GO
/****** Object:  StoredProcedure [dbo].[register]    Script Date: 12/22/2022 12:33:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[register]  
 @status int out,@username nvarchar(50),@password nvarchar(50)
as
--Checks the existence of the user in the Accounts table.
if exists(select username from Accounts where username = @username)
begin
set @status=1
return @status
end
else
begin
--If the user does not exist, then new user would be added into Accounts table
insert into Accounts(username, password)
values (@username, @password)
set @status=0
return @status
end