USE [EmployeeContext]
GO

/****** Object: Table [dbo].[ModelsEmployees] Script Date: 6/8/2023 9:44:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ModelsEmployees] (
    [EmployeeId] BIGINT         IDENTITY (1, 1) NOT NULL,
    [FirstName]  NVARCHAR (255) NULL,
    [LastName]   NVARCHAR (255) NULL
);


