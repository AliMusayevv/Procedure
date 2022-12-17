USE [LoginPage]
GO

/****** Object:  StoredProcedure [dbo].[ProWeb]    Script Date: 12/17/2022 3:05:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ProWeb] 
@status int out, @Usname nvarchar(15),@pass nvarchar(15)
as
if exists (select * from Web where USERNAME=@Usname)
begin
set @status=1
return @status
end
else
begin
insert into Web (USERNAME,PASSWORD) values (@Usname,@pass)
set @status=0
return @status
end
GO
