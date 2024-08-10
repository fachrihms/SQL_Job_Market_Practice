-- SELECT 
--     '2024-01-01'::DATE,
--     '321'::INTEGER,
--     'true'::BOOLEAN,
--     '3.14'::REAL;

-- SELECT
--     -- job_title_short AS title,
--     -- job_location AS location,
--     -- job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'JST' AS date_time
--     COUNT(job_id) AS job_posted_count,
--     EXTRACT(MONTH from job_posted_date) AS month_posted
-- FROM
--     job_postings_fact
-- WHERE 
--     job_title_short = 'Data Analyst'
-- GROUP BY
--     month_posted
-- ORDER BY 
--     job_posted_count DESC;

-- SELECT
--     job_title_short,
--     salary_year_avg
-- FROM
--     job_postings_fact
-- GROUP BY
--     job_title_short

