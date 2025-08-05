# Retail-Inventory-Optimization
Analyzing inventory efficiency using SQL and Power BI

1. Project Overview:
  This project focuses on optimizing inventory levels for a retail business using a combination of SQL for data analysis and Power BI for visualization. The goal     is to help businesses identify stock imbalances, improve inventory turnover, and increase profitability.

2. Tools & Technologies Used:
   SQL Server – Data cleaning, exploration, and business logic
   Power BI – Dashboard creation and data storytelling
   DAX – For calculated columns and dynamic metrics
   Excel/CSV – Dataset import

3. Dataset Summary

   Name: Retail_Inventory_Optimization_Large_Dataset.csvSize: 1,000 products with the following          
   columns:
  Product_ID
  Product_Name
  Category
  Stock_Quantity
  Units_Sold_Last_Month
  Price
  Cost
  Reorder_Level

4. SQL Work
   
   The following SQL tasks were performed on the dataset:
   Basic data exploration
   NULL and duplicate checks
   Business logic queries:
     -Products below reorder level
     -Overstocked products
     -Top-selling products
     -Profit margin calculations
   The cleaned and filtered data was then used as a source for Power BI dashboarding.

 5. Power BI Dashboard Highlights

    The dashboard includes the following visuals:
      - KPI Cards
         Total Units Sold
         Total Stock Available
         Average Profit Margin (DAX calculated)

      - Top 10 Best-Selling Products
        Clustered column chart
        Sorted by Units_Sold_Last_Month

      - Products Below Reorder Level
         Table visual with Below_Reorder = 1 filter
         Columns: Product Name, Stock Quantity, Reorder Level

      - Overstocked Products
        Table visual with Overstocked = 1 filter
        Columns: Product Name, Stock Quantity, Units Sold Last Month

      - Profit Per Product
         Clustered column chart using Profit_Per_Unit = Price - Cost

6.  Key Insights
    - Highlighted products at risk of stockouts to prevent missed sales
    - Identified slow-moving products that are overstocked and tying up capital
    - Focused on high-margin products to prioritize promotions and stocking

7.  What I Learned
    - Writing efficient business logic in SQL
    - Using DAX for dynamic KPIs
    - Building clean, insightful dashboards in Power BI
    - Applying BI techniques to solve real retail problems

8.  How to Use This Project
    - Download the .pbix file and open it in Power BI Desktop
    - Connect to your own retail dataset or use the provided .csv file
    - Use the visuals to monitor inventory performance and take data-driven actions

🌐 Author

Mohit Kumar
Business Insights & Analytics | SQL | Power BI | Data Storytelling 
