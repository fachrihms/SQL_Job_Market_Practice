SELECT
    job_id,
    job_location,
    salary_year_avg,
    job_title,
    job_schedule_type,
    job_health_insurance,
    name as company_name,
    job_posted_date
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title LIKE 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL AND
    -- job_health_insurance IS TRUE
ORDER BY salary_year_avg DESC

LIMIT 10;