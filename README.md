# 📊 Data Analyst Job Market Analysis (2023)  
**A SQL-Driven Exploration of High-Paying & In-Demand Skills**

## Introduction
The data analytics job market is evolving rapidly, with salaries and skill requirements shifting alongside advances in technology. This project takes a **data-driven approach** to understanding the market for **data analyst roles**, focusing on three core questions:

- 💰 Which data analyst jobs pay the most?
- 🔥 Which skills are most in demand?
- 📈 Which skills offer the best balance between high salary and strong demand?

Using SQL as the primary analysis tool, this project uncovers **actionable insights** to help aspiring and practicing data analysts make informed career decisions.

🔍 **All SQL queries used in this analysis can be found here:**  
[`/project_sql`](/project_sql_queries/)

---

## Background & Motivation
Navigating the data analyst job market can be overwhelming—job titles vary widely, required skills overlap with engineering roles, and salary ranges are often unclear.  

This project was created to:
- Identify **top-paying remote data analyst roles**
- Understand **which skills employers value most**
- Determine **which skills maximize career and salary growth**

The dataset used in this project comes from 
[Luke Barousse](https://lukebarousse.com/sql),  
which includes job postings enriched with information on:
- Job titles  
- Salaries  
- Locations  
- Required skills  

---

## Questions This Project Answers
The analysis is structured around five key questions:

1. What are the **top-paying data analyst jobs**?
2. What **skills are required** for these top-paying roles?
3. What skills are **most in demand** across the job market?
4. Which skills are **associated with higher salaries**?
5. Which skills are the **most optimal to learn** (high demand + high pay)?

---

## Tools & Technologies Used
This project relies on industry-standard tools commonly used by data professionals:

- **SQL** – Core analysis language for querying and aggregating data  
- **PostgreSQL** – Database system used to manage job posting data  
- **Visual Studio Code** – SQL execution and project development  
- **Git & GitHub** – Version control and project documentation  

---

## The Analysis

### 1. Top-Paying Data Analyst Jobs
To identify the highest-paying opportunities, I filtered for:
- Data analyst roles
- Remote positions
- Non-null salary data  

The query reveals that **top salaries range from $184,000 to $650,000**, highlighting the significant earning potential within data analytics.

**Key findings:**
- **Wide salary variation**, even within the same job title  
- **Diverse employers**, including tech, finance, and enterprise organizations  
- **Role diversity**, from Data Analyst to Director of Analytics  

---

### 2. Skills Required for Top-Paying Jobs
By joining job postings with skill data, I identified the skills most frequently required by the **top 10 highest-paying data analyst roles**.

![Top Paying Skills](graphs\most_in_demand_skills.png)
*Bar graph visualizing the count of skills for the top 10 paying jobs for data analysts*

**Key findings:**
- **SQL** is the most common requirement  
- **Python** and **Tableau** closely follow  
- Supporting tools such as **R**, **Snowflake**, **Pandas**, and **Excel** appear consistently  

➡️ **Insight:**  
High-paying roles expect strong foundational analytics skills, combined with modern data tooling.

---

### 3. Most In-Demand Skills for Data Analysts
To understand overall market demand, I analyzed skill frequency across all remote data analyst job postings.

**Top in-demand skills:**
- SQL  
- Excel  
- Python  
- Tableau  
- Power BI  

➡️ **Insight:**  
Foundational skills remain critical, especially SQL and Excel, while programming and visualization tools are increasingly essential for decision-making roles.

---

### 4. Skills Associated with Higher Salaries
This analysis examined **average salary by skill**, revealing which technologies command the highest pay.

**Key trends:**
- **Big data & machine learning tools** (PySpark, DataRobot, Couchbase) lead salary rankings  
- **Engineering & deployment tools** (GitLab, Kubernetes, Airflow) are highly rewarded  
- **Cloud platforms and distributed systems** significantly boost earning potential  

➡️ **Insight:**  
The highest-paying “data analyst” roles increasingly overlap with **data engineering and machine learning** responsibilities.

---

### 5. Most Optimal Skills to Learn
By combining **salary** and **demand**, this analysis identifies skills that offer the best return on investment.

**Key takeaways:**
- **Cloud platforms** (AWS, Azure, BigQuery, Snowflake) strike a strong balance between demand and salary  
- **Programming languages** (Python, R, Go) remain valuable but face more competition  
- **BI and collaboration tools** (Tableau, Jira, Confluence) support strong career growth  

➡️ **Insight:**  
The most optimal skills are not always the highest-paying, but those that combine **consistent demand with above-average salaries**.

---

## What I Learned
Through this project, I significantly strengthened my SQL and analytical skills:

- 🧩 **Advanced SQL querying** using joins, CTEs, and filtering  
- 📊 **Data aggregation & summarization** with GROUP BY and aggregate functions  
- 💡 **Analytical thinking**, translating career questions into structured data queries  
- 📈 **Market analysis**, connecting technical skills with business and salary outcomes  

---

## Conclusions

### Key Insights
1. **Top-paying data analyst roles** offer substantial salary potential, especially in remote positions.  
2. **SQL is the single most important skill**, appearing in both top-paying and most in-demand roles.  
3. **High salaries favor specialization**, particularly in cloud, big data, and machine learning tools.  
4. **Traditional tools alone are not enough**—modern data analysts benefit from engineering-adjacent skills.  
5. **Optimal career growth** comes from combining core analytics skills with one specialized domain.

---

## Final Thoughts
This project demonstrates how **SQL can be used not only for data analysis, but for career strategy**. By understanding how skills align with salary and demand, data analysts can make smarter learning and job-search decisions.

> **Strong fundamentals open doors—but specialization unlocks top salaries.**
