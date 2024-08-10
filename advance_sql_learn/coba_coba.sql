SELECT 
    job_title_short,
    salary_year_avg
FROM job_postings_fact
WHERE salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC