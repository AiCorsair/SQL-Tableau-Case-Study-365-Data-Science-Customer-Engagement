# SQL & Tableau Case Study: 365 Data Science Customer Engagement


## Table of Contents
- [I. Introduction](#I.-Introduction)
- [II. Visualizations & KPIs](#II.-Visualizations-&-KPIs)
- [III. Three-Page Dashboard](#III.-Three-Page-Dashboard)
- [IV. Answering Key Questions](#IV.-Answering-Key-Questions)


## I. Introduction

In this project, we built a three-page Tableau dashboard with key metrics and visualizations to track student engagement with the 365 Data Science platform from January `1` to October `20, 2022`.

We retrieved data from the 365 Data Science database using MySQL, which includes real-life records on students, purchases, and courses. Finally, we answered key questions to help the company better understand customer registration, engagement, and demographic patterns.

We designed queries to extract data from `365 User Database.sql` and stored them in three files:

- `1. Courses Information.sql`
- `2. Purchases Information.sql`
- `3. Students Information.sql`

Finally, we exported the retrieved data to CSV files with matching names and imported them into Tableau.


## II. Visualizations & KPIs

- We created a course engagement table showing the top `8` courses by total minutes watched, along with average minutes watched, total ratings, and average rating.

- We made two horizontal bar plots: one for the top `8` countries by total students and another for the top `8` countries by total minutes watched. Filtering was based on registration month (January to October `2022`) and subscription type (All, Free, Paid).

- We created a bar plot with a line for total and average minutes watched, filtered by subscription type (All, Free, Paid). We also created a bar plot showing the percentage of onboarded vs non-onboarded students by month with no filtering.

- Finally, we calculated key performance indicators (KPIs) for total students registered, total minutes watched, average minutes watched, and the percentage of students onboarded. For the first three metrics, filtering was done based on start date, end date, and subscription type.


## III. Three-Page Dashboard

![Page 1](https://github.com/user-attachments/assets/94c29ddd-1918-4cdd-b789-688cbbd4fad2)

![Page 2](https://github.com/user-attachments/assets/256e6a2b-4534-4f7a-bdf3-87d94e38e86f)

![Page 3](https://github.com/user-attachments/assets/d42ce055-9cca-47ec-b634-672322caafd8)


## IV. Answering Key Questions


### 1. How many students registered for 365 Data Science during our analysis period? What’s the total percentage of onboarded students? How does the monthly onboarding rate fluctuate?

The KPI for total students registered shows `35,230` students registered on the platform during the analysis period. The percentage of onboarded students is `51.54%`, meaning just over half of the registered students engaged with the platform.

Why didn't around half of the students watch any content? This could be due to user experience issues, difficulty finding interesting content, or not knowing where to start. To address this, we suggest:

-	Testing the platform for potential issues.

-	Following up with users who didn’t watch any content to understand their experience, and possibly adding missing content if needed.

-	Enhancing the user journey by guiding them to a structured learning path with rich data projects.

The monthly onboarding rate fluctuates between `46.29%` and `64.54%`, with the highest rate of `64.54%` in October. However, our data didn’t include the last `11` days of October in the analysis.


### 2. 

