USE [EmployeeContext]
GO

/****** Object: SqlProcedure [dbo].[updateEmployee] Script Date: 6/8/2023 9:45:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].updateEmployee
	@FirstName varchar(255),
	@LastName varchar(255),
	@EmployeeId int
AS
	UPDATE ModelsEmployees SET FirstName=@FirstName, LastName=@LastName WHERE  EmployeeId=@EmployeeId
RETURN 0
