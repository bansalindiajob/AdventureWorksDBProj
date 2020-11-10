/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF NOT EXISTS (SELECT 1 FROM SalesLT.Product where Name = 'Product-1')
BEGIN
    INSERT INTO SalesLT.Product(Name,ProductNumber,SellStartDate,StandardCost,ListPrice)
    VALUES ('Product-1','P-001','2020/01/01',100,90);
END 
GO

IF NOT EXISTS (SELECT 1 FROM SalesLT.Product where Name = 'Product-2')
BEGIN
    INSERT INTO SalesLT.Product(Name,ProductNumber,SellStartDate,StandardCost,ListPrice)
    VALUES ('Product-2','P-002','2020/01/01',100,90);
END 
GO
