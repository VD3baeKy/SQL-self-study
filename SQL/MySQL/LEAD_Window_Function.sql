/* これにより、各月の売上と前月の売上を同時に表示することができる。 */
SELECT 
    month,
    sales,
    LEAD(sales) OVER (ORDER BY month DESC) AS previous_month_sales
FROM 
    sales_data;
