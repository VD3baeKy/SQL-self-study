/* これにより、各月の売上と2か月前の売上を比較することができる。 */
SELECT 
    month,
    sales,
    /*  LEAD(sales, 2)は、現在の行から2行先のsalesの値を取得する。 */
    LEAD(sales, 2) OVER (ORDER BY month DESC) AS two_months_before_sales
FROM 
    sales_data;
