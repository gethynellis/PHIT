
/*Create the Schema*/

USE [AdventureWorksLT2019]
GO
CREATE SCHEMA [hDemo]
GO

/*Grant the login permission to ALTER Objects in the Schema*/
--This is need to created the view in the schema
GRANT ALTER ON SCHEMA :: [hDemo] TO gredemo; 


/*GRANT Permission to the user to Create and ALTER VEIWS*/
--This is needed to allow the user to create the view
GRANT Create VIEW to gredemo


/*User Defined Data Types will be a pain if you use them*/

GRANT REFERENCES ON TYPE :: [dbo].[NameStyle] TO gredemo; 
GRANT CONTROL ON TYPE :: [dbo].[NameStyle] TO gredemo; 
REVOKE CONTROL ON TYPE :: [dbo].[NameStyle] TO gredemo; 

/*This needs to be run by the new user you have given permissions to create the view*/

CREATE VIEW hdemo.vtest as
SELECT  [CustomerID]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[CompanyName]
      ,[SalesPerson]
      ,[EmailAddress]
      ,[Phone]
      ,[PasswordHash]
      ,[PasswordSalt]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorksLT2019].[SalesLT].[Customer]


