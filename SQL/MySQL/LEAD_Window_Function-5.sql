/* これにより、各月の売上と次月の売上の平均を表示することができる。 */
SELECT 
    month,
    sales,
    (sales + LEAD(sales) OVER (ORDER BY month DESC)) / 2 AS moving_average
FROM 
    sales_data;
