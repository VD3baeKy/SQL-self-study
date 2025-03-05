/* これにより、売上が1000を超えた月のみ次月の売上を表示することができる。 */
SELECT 
    month,
    sales,
    CASE 
        WHEN sales > 1000 THEN LEAD(sales) OVER (ORDER BY month DESC)
        ELSE NULL
    END AS prev_month_sales_if_above_1000
FROM 
    sales_data;
