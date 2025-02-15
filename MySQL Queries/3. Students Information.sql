USE 365_database;

-- CTE tracking total minutes watched daily and student onboarding status
WITH student_onboarding_status AS
(
SELECT
	i.*,
    l.date_watched,
    IF(l.student_id IS NULL, 0, ROUND(SUM(l.minutes_watched), 2)) AS total_minutes_watched,
    IF(l.student_id IS NULL, 0, 1) AS is_onboarded
FROM
	365_student_info i
		LEFT JOIN
	365_student_learning l USING (student_id)
GROUP BY
	student_id, date_watched
),

-- CTE tracking student subscription status based on subscription period
student_subscription_status AS
(
SELECT
	os.*,
    IF(date_watched BETWEEN p.start_date AND p.end_date, 1, 0) AS is_subscribed
FROM
	student_onboarding_status os
		LEFT JOIN
    v_student_purchases p USING (student_id)
),

-- CTE showing student activity, onboarding status, and subscription status
student_activity_summary AS
(
SELECT 
    student_id,
    student_country,
    date_registered,
    date_watched,
    total_minutes_watched,
    is_onboarded,
    MAX(is_subscribed) AS is_subscribed
FROM
	student_subscription_status
GROUP BY
	student_id, date_watched
)

SELECT * FROM student_activity_summary;