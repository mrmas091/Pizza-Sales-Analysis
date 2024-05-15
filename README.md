
# Pizza-Sales-Dashboard

### Dashboard Link : https://app.powerbi.com/groups/me/reports/81ee6a35-b501-49a6-befd-975305883cb4?pbi_source=desktop

## Problem Statement

Amidst the savory world of pizza sales, businesses face the challenge of deciphering complex data to maximize profitability and customer satisfaction. Current methods often fall short, lacking the agility and depth needed to extract meaningful insights. Thus, the demand arises for a robust pizza sales dashboard that seamlessly consolidates data, unveils actionable patterns, and empowers stakeholders to make informed decisions, propelling their businesses to new heights of success in the ever-evolving pizza market

Since, Analyzing sales by pizza size reveals a significant preference for medium-sized pizzas.Optimize menu offerings by promoting larger pizza sizes to boost average order value and cater to diverse customer preferences.

Also strategically market and promote bottom-performing pizzas to increase their sales revenue, tapping into untapped market segments and diversifying product appeal.


### Steps followed 

- Step 1 : Load data into Power BI Desktop, dataset is a Excel file.
- Step 2 : Open power query editor & in view tab under Data preview section, check "column distribution", "column quality" & "column profile" options.
- Step 3 : Also since by default, profile will be opened only for 1000 rows so you need to select "column profiling based on entire dataset".
- Step 4 :Implemented data validation in Power Query to ensure consistency and accuracy of pizza order details, such as verifying the correctness of pizza size entries.
- Step 5 : Calculated column dim_date was created by using the calender() function including min and max daters as inputs from the data table.

for creating new column following DAX expression was written;   

        Dim_Date =
        CALENDAR(MIN('pizza_sales'[order_date]),MAX('pizza_sales'[order_date]))

- Step 6 : in dim_date table added month, month_no, Day, Day_no columns using dax quaries.

for creating new column following DAX expression was written;  

        Month =
        FORMAT('Dim_Date'[Date],"mmm")

        Month_N0 = 
        MONTH('Dim_Date'[Date])

        Day = 
        FORMAT('Dim_Date'[Date],"ddd")
        
        Day_No = 
        Day_no = WEEKDAY('Dim_Date'[Date])
![Snap_1](![month details](https://github.com/mrmas091/Pizza-Sales-Analysis/assets/133782289/630e7c69-dde3-4a51-aa5b-b23b2f725194))
- Step 7 : New measures was created to find Total revenue, Average order value, Total pIzzas sold, Total orders, Average pizza per order

Following dax expressions were written to create above measures

       Total revenue =
       Sum(pizza_sales[total_price]) 

       Average order value = 
       DIVIDE([Total Revenue],[Total orders])

       Total pIzzas sold =
       SUM(pizza_sales[quantity]) 

       Total orders = 
       COUNTROWS(VALUES('pizza_sales'[order_id]))
       Average pizza per order =
       DIVIDE([Total Pzzas Sold],[Total orders])
- Step 8 : In the report view, under the view tab, theme was selected.

- Step 9 : In the report view, New card visual is added to shocase all the KPI's.

![kpis](https://github.com/mrmas091/Pizza-Sales-Analysis/assets/133782289/ce31f16a-a19d-472f-801c-c8b90e52c375)  

- Step 10 : We need to showcase the daily trend of pizza sales by revenue, thus in order to represent daily trends, a new visual was added using the bar chart in the visualizations pane in report view. 
- Step 11 : Visual filters (Slicers) were added for two fields named "category", "orderd date".
- Step 12 : A new card visual is added to the canvas, which wil represent Total revenue, Average order value, Total pIzzas sold, Total orders, Average pizza per orders. All these measures were added to the new card visual 
- Step 13 : In order to showcase the monthly trend by total revenue generated added a line chart to the canvas.
- Step 14 : Two Donut charts were added to shocase teh percentage of revenue generated by the category and by size.
- Step 15 : In order to shocase the total contribution of revenue by each category a funnel chart is added to the canvas
- Step 16 : In the report view, under the insert tab, two text boxes were added to the canvas, they used to  highlight the trends of the visuals.
- Step 17 : A new page is added to the report named Best & Worst Sellers, in order to shocase Top 5 and Bottom 5 of best sellers by Total Revenue, Total Orders and Total quatity added 6 barhcarts to the canvas and in the Filter pane using advanced filter filterd the Top and Bottom rows by respective category.
- Step 18 : In order to acces, Best sellers pagae added an Action button to the Home page, in format button tab selected Action and added page navigaton to the Best and Worst Sellers page.
- Step 19 : For each category of best & worst sellers actoin buttons was created and added the visuals visibility for each button as a action.

 - Step 20 : The report was then published to Power BI Service.
 
 
![Publish_Message](![upload to power bi](https://github.com/mrmas091/Pizza-Sales-Analysis/assets/133782289/9184762d-e356-4f1e-9a64-6c933a318b96))

# Snapshot of Dashboard (Power BI Service)

![power bi report](https://github.com/mrmas091/Pizza-Sales-Analysis/assets/133782289/2b261b1d-10b7-413e-afaa-7907d1cc475f)

 
 # Report Snapshot (Power BI DESKTOP)

 
![services dashboard](https://github.com/mrmas091/Pizza-Sales-Analysis/assets/133782289/8b3e57f7-5bb3-4d46-b8d3-dd4bb5f64841)

# Insights

A multi paged report was created on Power BI Desktop & it was then published to Power BI Service.

Following inferences can be drawn from the dashboard;

### [1] Total nunber of orders Placed = 21350

   Sum of the prize of total Pizza orders = 817860.05

   The average amount spend per order = 38.31

   The sum of quantity of all pizzas sold = 49574

  The sum of quantity of all pizzas sold = 49574



     
 ### [2] Sales Performance By Category
 
 ### Pizza Category
 
 1.1) 29.02 % of orders from Classic.
 
 1.2) 24.28 %of orders from Supreme.
 
 1.3) 23.89 % of orders from Veggie.

 1.4) 22.81 % of orders from Chicken.
 
         thus, maximum orders are for Classic Pizzas.
 
 ### Pizza Sizes
 
 2.1)  36.43 % of orders are for Large-sized Pizzas.
 
 2.2)  31.92 % of orders are for Medium-sized Pizzas.
 
 2.3)  30.01 % of orders are for Small-sized Pizzas.
 
 2.4)  1.56 % of orders are for Extra Large-sized Pizzas.

 
         thus, maximum orders are of Large-Sized Pizzas   
### Best sellers

3.1)  The Thai Chicken Pizza contributes to maximum Revenue (43434)

3.2) The Classic Deluxe Pizza contributes to maximum Total Quantity (2432)

3.3)  The Classic Deluxe Pizza contributes to maximum orders (2273)
       

### Worst Sellers

4.1) The Brie Carre Pizza contributes to minimum Revenue (1588)

4.2) The Brie Carre Pizza contributes to minimum of Total Quantity(490)

4.3)  The Brie Carre Pizza contributes to minimum Total orders (480)

Total Quantity

        