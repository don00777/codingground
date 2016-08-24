http://www.programmerinterview.com/index.php/database-sql/sql-having-vs-group-by/


----------Selecting Second Top Value from Row-----------------
select TOP 1 * from (select TOP 2 * from Products where PRICE <(Select Max(Price) from Products) ORDER BY PRICE DESC)

select Max(Price) from products where Price < (Select Max(Price) from Products)

-----------------My SQL Selectin Nth TOP value fromTable ----------------------

SELECT TOP 1 PRICE FROM (SELECT DISTINCT TOP 6 PRICE FROM Products ORDER BY PRICE DESC ) AS Emp ORDER BY PRICE
SELECT TOP 1 PRICE FROM (SELECT DISTINCT TOP n-1 PRICE FROM Products ORDER BY PRICE DESC ) AS Emp ORDER BY PRICE

----------------SQL using LIMIT 3rd Highest---------------------------
SELECT DISTINCT Price FROM Products ORDER BY PRICE DESC LIMIT 2,1
SELECT DISTINCT Price FROM Products ORDER BY PRICE DESC LIMIT n-1,1