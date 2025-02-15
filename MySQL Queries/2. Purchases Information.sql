USE 365_database;

DROP VIEW IF EXISTS v_student_purchases;

-- Create a view to calculate purchase start and end dates based on purchase type
CREATE VIEW v_student_purchases AS
    SELECT
        purchase_id,
        student_id,
        purchase_type,
        date_purchased AS start_date,
        CASE
            WHEN purchase_type = 'Monthly' THEN DATE_ADD(date_purchased, INTERVAL 1 MONTH)
            WHEN purchase_type = 'Quarterly' THEN DATE_ADD(date_purchased, INTERVAL 3 MONTH)
            WHEN purchase_type = 'Annual' THEN DATE_ADD(date_purchased, INTERVAL 1 YEAR)
        END AS end_date
    FROM
        365_student_purchases;
        
SELECT * FROM v_student_purchases;