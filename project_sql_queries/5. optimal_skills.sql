/*
Question: What are the most optimal skills to learn for a Data Analyst?
 - Identify skills that are both in high demand and associated with high 
   salaries for Data Analyst roles.
 - Concentrates on remote postings with specified salaries.
 - Why? Helps aspiring Data Analysts prioritize skill development for better 
   job prospects and earning potential.
*/

WITH skills_demand AS (
    SELECT 
        skills_dim.skill_id,
        skills_dim.skills,
        COUNT(skills_job_dim.job_id) AS demand_count
    FROM 
        job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_postings_fact.salary_year_avg IS NOT NULL AND
        job_work_from_home = True
    GROUP BY 
        skills_dim.skill_id
), averag_salary AS (
    SELECT 
        skills_dim.skill_id,
        skills_dim.skills,
        ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS average_salary
    FROM 
        job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_postings_fact.salary_year_avg IS NOT NULL AND
        job_work_from_home = True
    GROUP BY 
        skills_dim.skill_id
)
SELECT
    skills_demand.skill_id, 
    skills_demand.skills, 
    skills_demand.demand_count, 
    averag_salary.average_salary
FROM 
    skills_demand
INNER JOIN averag_salary ON skills_demand.skill_id = averag_salary.skill_id
WHERE
    skills_demand.demand_count > 10
ORDER BY 
    averag_salary.average_salary DESC,
    skills_demand.demand_count DESC
LIMIT 25;