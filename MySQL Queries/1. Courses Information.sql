USE 365_database;

-- CTE calculating total minutes watched and distinct students per course
WITH course_engagement AS
(
SELECT
    course_id,
    course_title,
    ROUND(SUM(minutes_watched), 2) AS total_minutes_watched,
    COUNT(DISTINCT student_id) AS total_students
FROM
    365_course_info
        JOIN
    365_student_learning USING (course_id)
GROUP BY course_id
),

-- CTE calculating average minutes watched per student for each course
avg_course_engagement AS
(
SELECT
    course_id,
    course_title,
    total_minutes_watched,
    ROUND(total_minutes_watched/total_students, 2) AS avg_minutes_watched
FROM
	course_engagement
),

-- CTE calculating total ratings and average rating per course
course_ratings AS
(
SELECT
    ae.*,
    COUNT(r.course_rating) AS total_ratings,
    IF(COUNT(r.course_rating) != 0, AVG(r.course_rating), 0) AS avg_rating
FROM
    avg_course_engagement ae
        LEFT JOIN
    365_course_ratings r USING (course_id)
GROUP BY course_id
)

SELECT * FROM course_ratings;