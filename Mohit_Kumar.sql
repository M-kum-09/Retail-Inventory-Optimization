Use Retail_Inventory

'''View Basic Data'''

SELECT TOP 100 * FROM Inventory_Dataset;

'''Check for Missing (NULL) Values'''

SELECT
  SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS Null_Product_ID,
  SUM(CASE WHEN Product_Name IS NULL THEN 1 ELSE 0 END) AS Null_Product_Name,
  SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS Null_Category,
  SUM(CASE WHEN Stock_Quantity IS NULL THEN 1 ELSE 0 END) AS Null_Stock_Quantity,
  SUM(CASE WHEN Units_Sold_Last_Month IS NULL THEN 1 ELSE 0 END) AS Null_Units_Sold,
  SUM(CASE WHEN Price IS NULL THEN 1 ELSE 0 END) AS Null_Price,
  SUM(CASE WHEN Cost IS NULL THEN 1 ELSE 0 END) AS Null_Cost,
  SUM(CASE WHEN Reorder_Level IS NULL THEN 1 ELSE 0 END) AS Null_Reorder_Level
FROM Inventory_Dataset;

'''Check for Duplicate Product IDs'''

SELECT Product_ID, COUNT(*) AS Occurrences
FROM Inventory_Dataset
GROUP BY Product_ID
HAVING COUNT(*) > 1;

''' Check for Negative or Invalid Values'''

SELECT *
FROM Inventory_Dataset
WHERE Stock_Quantity < 0
   OR Units_Sold_Last_Month < 0
   OR Price < 0
   OR Cost < 0
   OR Reorder_Level < 0;


'''Stockouts (0 or less stock but some recent sales)'''

SELECT *
FROM Inventory_Dataset
WHERE Stock_Quantity <= 0 AND Units_Sold_Last_Month > 0;


'''Overstocked Products (High stock but low demand)'''

SELECT *
FROM Inventory_Dataset
WHERE Stock_Quantity > 100 AND Units_Sold_Last_Month < 20;

'''Best Sellers'''

SELECT TOP 10 *
FROM Inventory_Dataset
ORDER BY Units_Sold_Last_Month DESC;

'''Products Below Reorder Level'''

SELECT *
FROM Inventory_Dataset
WHERE Stock_Quantity < Reorder_Level;

 '''Profitability Analysis'''

 SELECT
  Product_ID,
  Product_Name,
  Price,
  Cost,
  (Price - Cost) AS Profit_Per_Unit,
  ROUND(((Price - Cost) / NULLIF(Cost, 0)) * 100, 2) AS Profit_Margin_Percent
FROM Inventory_Dataset
ORDER BY Profit_Margin_Percent DESC;


