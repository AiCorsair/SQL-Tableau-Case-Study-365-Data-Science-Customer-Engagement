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


### 2. Which courses are the most watched by students? How high is their average rating?

The most watched course is "Introduction to Data and Data Science," with `333,265.90` total minutes watched. This is expected, as it’s an introductory course and a common starting point for students. With around `2` hours of content, it was watched for an average of `39.09` minutes and has an impressive average rating of `4.86` from `572` total ratings.

"SQL" is the second most watched course, with `234,824.80` total minutes watched. On average, students watched `144.60` minutes of this course, which has `11` hours of content. SQL is a key skill for anyone pursuing a career in data science or data analysis.

Other highly watched courses include "Statistics," "Introduction to Excel," and "Python Programmer Bootcamp." The average ratings for these five courses range from `4.78` to `4.86`, reflecting excellent feedback given the high number of total ratings (between `101` and `572`).


### 3. How do the total and average minutes watched change based on whether a student paid for a subscription?

During the entire analysis period, free-plan students watched a total of `490,762` minutes, while paying students watched `1,344,826` minutes. This significant difference is expected, as free-plan students generally have less motivation to study, and their content access is limited to `30` minutes per course. In contrast, paying students are more committed, seeking better value for their investment, and can access all content.

The difference in average minutes watched is also notable. Free-plan students watch an average of `28.96` minutes, while paying students watch about `669.4` minutes on average.

An interesting spike occurs between August `15` and `18`, when free-plan students' average minutes watched increases to `73.8` minutes. This is due to 365 Data Science offering free access to all its students during this period, which boosted engagement.


### 4. Did the students spend more time watching courses as months passed? Did their watch time vary seasonally?

We observed a significant peak in total minutes watched by free-plan students in August, which resulted from the Free-Days campaign run by the 365 Data Science marketing team. However, this increase did not affect paying students, as they already had full access to the platform and weren't impacted by the campaign.

In general, students spent more time watching courses from June to October. It's important to note that October's data only includes `20` days, as the last `11` days were not part of the analysis.


### 5. Which countries have the most students registered based on their subscription type? Does this number scale proportionally with the total minutes watched per country?

Between January `1` and October `20, 2022`, the countries with the most free-plan students are India (`6,864`), the USA (`4,313`), and Egypt (`2,990`). For paying students, the USA leads (`679`), followed by India, the UK, and Canada.

While there is a positive correlation between the total number of students and total minutes watched per country, the numbers do not always scale proportionally.
