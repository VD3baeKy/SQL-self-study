/* これにより、各地域ごとに前月の売上を比較することができます。 */
SELECT 
    region,
    month,
    sales,
    LEAD(sales) OVER (PARTITION BY region ORDER BY month DESC) AS prev_month_sales
FROM 
    sales_data;
