USE [EmployeeContext]
GO

/****** Object: SqlProcedure [dbo].[getEmployees] Script Date: 6/8/2023 9:44:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].getEmployees
AS
	SELECT EmployeeId,FirstName,LastName FROM ModelsEmployees
RETURN 0
