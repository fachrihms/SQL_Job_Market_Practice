
WITH top_paying_jobs AS(
    SELECT
        job_id,
        salary_year_avg,
        job_title,
        job_health_insurance,
        name as company_name
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title LIKE 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills
FROM 
    top_paying_jobs
INNER JOIN 
    skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN 
    skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY salary_year_avg DESC

/*
Insights on skills and their demand for Data Analyst jobs with health insurance:

1. SQL and Python dominance: These two skills are the most frequently requested, appearing in 6 out of 8 job postings. This highlights the critical importance of database querying (SQL) and versatile programming (Python) in data analysis roles.

2. Statistical programming: R is the third most requested skill, emphasizing the continued relevance of statistical analysis in data analyst positions.
Data visualization: Tableau, Looker, and Power BI are all represented, underscoring the importance of data visualization skills. Employers clearly value the ability to present data insights effectively.

3. Spreadsheet proficiency: Excel is still in demand, appearing in 3 job postings. This suggests that traditional spreadsheet skills remain relevant alongside more advanced analytical tools.
Cloud platforms: AWS is mentioned twice, and GCP (Google Cloud Platform) once, indicating a growing need for familiarity with cloud-based data solutions.

4. Machine learning: While not among the top skills, the presence of scikit-learn in one job posting suggests that some data analyst roles may involve basic machine learning tasks.
Diverse skill sets: Many job postings list multiple skills, indicating that employers are looking for versatile analysts who can work with various tools and technologies.

5. Emerging technologies: Skills like Golang, Elasticsearch, and Kubernetes appear in the dataset, hinting at the evolving nature of data analysis and its integration with modern software development practices.

In conclusion, the data suggests that aspiring data analysts should focus on developing a strong foundation in SQL and Python, while also gaining proficiency in statistical analysis (R), data visualization tools, and cloud platforms. The ability to work with multiple technologies and adapt to new tools appears to be highly valued in the current job market for data analysts.


[
  {
    "job_id": 1246069,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "Plexus Resource Solutions",
    "skills": "python"
  },
  {
    "job_id": 1246069,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "Plexus Resource Solutions",
    "skills": "mysql"
  },
  {
    "job_id": 1246069,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "Plexus Resource Solutions",
    "skills": "aws"
  },
  {
    "job_id": 712473,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 712473,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 712473,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 712473,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 712473,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matlab"
  },
  {
    "job_id": 712473,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Information Technology",
    "skills": "pandas"
  },
  {
    "job_id": 712473,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 712473,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 712473,
    "salary_year_avg": "165000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 456042,
    "salary_year_avg": "151500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 456042,
    "salary_year_avg": "151500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 456042,
    "salary_year_avg": "151500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Get It Recruit - Healthcare",
    "skills": "r"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "sql"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "python"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "r"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "golang"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "elasticsearch"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "aws"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "bigquery"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "gcp"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "pandas"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "scikit-learn"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "looker"
  },
  {
    "job_id": 479485,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Level",
    "skills": "kubernetes"
  },
  {
    "job_id": 405581,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "CyberCoders",
    "skills": "python"
  },
  {
    "job_id": 405581,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "CyberCoders",
    "skills": "java"
  },
  {
    "job_id": 405581,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "CyberCoders",
    "skills": "r"
  },
  {
    "job_id": 405581,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "CyberCoders",
    "skills": "javascript"
  },
  {
    "job_id": 405581,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "CyberCoders",
    "skills": "c++"
  },
  {
    "job_id": 405581,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "CyberCoders",
    "skills": "tableau"
  },
  {
    "job_id": 405581,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "CyberCoders",
    "skills": "power bi"
  },
  {
    "job_id": 405581,
    "salary_year_avg": "145000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "CyberCoders",
    "skills": "qlik"
  },
  {
    "job_id": 1090975,
    "salary_year_avg": "140500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1090975,
    "salary_year_avg": "140500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1090975,
    "salary_year_avg": "140500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 1090975,
    "salary_year_avg": "140500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Uber",
    "skills": "swift"
  },
  {
    "job_id": 1090975,
    "salary_year_avg": "140500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Uber",
    "skills": "excel"
  },
  {
    "job_id": 1090975,
    "salary_year_avg": "140500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Uber",
    "skills": "tableau"
  },
  {
    "job_id": 1090975,
    "salary_year_avg": "140500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "Uber",
    "skills": "looker"
  },
  {
    "job_id": 1482852,
    "salary_year_avg": "138500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "Overmind",
    "skills": "sql"
  },
  {
    "job_id": 1482852,
    "salary_year_avg": "138500.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "Overmind",
    "skills": "python"
  },
  {
    "job_id": 479965,
    "salary_year_avg": "135000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 479965,
    "salary_year_avg": "135000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "InvestM Technology LLC",
    "skills": "excel"
  },
  {
    "job_id": 479965,
    "salary_year_avg": "135000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": false,
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 1326467,
    "salary_year_avg": "135000.0",
    "job_title": "Data Analyst",
    "job_health_insurance": true,
    "company_name": "EPIC Brokers",
    "skills": "excel"
  }
]
*/
