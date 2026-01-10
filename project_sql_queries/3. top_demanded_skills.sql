/*
Question: What are the most in-demand skills for data analyst roles?
 - Identify the top 5 in-demand skills for data analyst positions.
 - Focus on all job postings.
 - Why? Provide insights into the key skills that employers are seeking 
   for data analyst roles.
*/

SELECT 
  skills_dim.skills,
  COUNT(skills_job_dim.job_id) AS demand_count
FROM 
  job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
  job_title_short = 'Data Analyst'
GROUP BY 
  skills_dim.skills
ORDER BY 
  demand_count DESC
LIMIT 5;