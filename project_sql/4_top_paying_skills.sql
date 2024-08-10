SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) as avg_salary 
FROM 
    job_postings_fact
INNER JOIN 
    skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN 
    skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE 
    -- job_country = 'Singapore' 
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 50;

/*
Quick Insight:
1. High Demand for Big Data and Cloud Skills: Technologies related to big data processing (like PySpark) and cloud platforms (AWS, GCP, Azure) command the highest average salaries, indicating strong market demand for these skills.

2. Specialization Pays Off: More specialized or niche skills (e.g., PySpark, Couchbase, DataRobot) tend to offer higher average salaries compared to more general skills like Python or R, suggesting that specialization can be financially rewarding.

3. Emerging Technologies are Valued: Skills in newer technologies such as Kubernetes, Airflow, and Snowflake show competitive average salaries, reflecting a trend towards modern, scalable infrastructure in data analysis and a market willing to pay for expertise in these areas.
*/