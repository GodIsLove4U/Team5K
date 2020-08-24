# Team5K

The main contribution of this study is a careful analysis of the predictive power of donations in battleground states in determining presidential election outcomes. Through a granular analysis of donations data by county in each swing state, and by using PostgreSQL, Python, and Tableau to do so, we perform data analysis, visualization, and RandomForest machine learning to predict that:
* Florida, Pennsylvania and Wisconsin will vote “blue” in this election cycle.
* Arizona, North Carolina, and Michigan will vote “red” in this election cycle.
* Red votes in swing states will make up 42 electoral college votes.
* Blue votes in swing states will male up 59 electoral college votes.

## Introduction
Our main goal is to analyze the predictive power of political donations on presidential election outcomes in key battleground states in the United States. We will build predictive models using machine learning to understand how donations to political campaigns inform voting in counties and states. 

We focus our search on battleground states in the United States because of the impact they have in federal elections. Battleground states are those states in which neither major political party holds a lock on the outcome of presidential elections, and whose electoral votes have a high probability of being the deciding, or ‘swing’ factor in a presidential election. Given that these states makeup nearly 20% of all donors, electoral college votes, and delegates year on year, we use the 2020 considerations for battleground states: Arizona (AZ), Florida (FL), Michigan (MI), North Carolina (NC), Pennsylvania (PA), and Wisconsin (WI). We replicate our analysis across years between 2000 and 2020, mapping political campaign donations and federal election outcomes to build a predictive model that helps us understand which party may win these key states in 2020.

We found that this topic would be impactful in understanding how political campaign donations can influence the outcomes of presidential elections. The state of the pandemic in the US paired with civil unrest throughout the country pose a dynamic background for the upcoming presidential elections. As active citizens, our group is invested in evaluating how events similar in magnitude have created shifts in political affiliation.

This repository includes the following:
  * ETL: Files related to extracting and transforming raw data in queryable tables. 
  * Data Extracts: All CSV files holding raw data, before ETL process.
  * Data Model: Entity Relationship Diagrams (ERDs) related to data transformation.
  * Models: Jupyter Notebooks containing all machine learning algorithms, exploratory data analysis, and regression analysis code. Also includes files containing PNGs of resulting visualizations from analysis.
  * Preso_Info: Includes final project deliverables for [Segment 4](https://github.com/GodIsLove4U/Team5K/tree/master/final_deliverables), a [Tableau storyboard](https://public.tableau.com/profile/doris.b.cohen#!/vizhome/Team5K-FinalProject/FinalProject?publish=yes), an [interactive dashboard](http://team5k.herokuapp.com/) and a formal [presentation](https://docs.google.com/presentation/d/1ijhyfkdBBYox_7o6rQUraLtBufkcBuDwIpVaxm5wSqs/edit?usp=sharing), including information on
    * Data exploration and preprocessing
    * Feature engineering and selection
    * Data Analysis
    * Imaging and results generated from models
    * Data sources
    * Explanation of changes to machine learning model
    * Explanation of model choice, including limitations and considerations
    * Current accuracy scores
    * Description of test and training splits, and training so far
  * Views: HTML files related to building interactive dashboard.

## Dataset Overview

For our analysis, we use publicly available datasets (FEC, Census Bureau, Kaggle) that evaluate the following features:
* Voting data and associated socioeconomic events
 * 2000: Dotcom Bubble Burst
 * 2001: 9/11
 * 2006-2008: Housing Bubble
 * 2007-2008: Financial Crisis
 * 2020: COVID19
* Demographics
 * Urban/rural
 * Average age
 * Education
 * County (trends within counties themselves)
   * County zipcodes
   * Committee Name, Party Affiliation, Committee ID Table Mapping
   * Zipcode to County Table Mapping
   * Ethnicity
   * Unemployment data (year, month, season)
* Campaign Donations data
   * Allows us to build a predictive model to determine how the county aggregate sum of each four year period impacts the number of actual votes received in the election year per county
   * Filtered to represent donations only in swing states over 20 years
   * Party Classifiers: Democrat or Republican
   * Data on Democratic and Republican candidates in battleground states (top congressional or gubernatorial candidates in each battleground state)
    
## Methodology and Approach
We aim to understand the nuances of campaign donations and elections in the US (segment 1), clean and normalize the raw data associated with both in a number of databases (segment 2), load the data into databases and perform statistical and predictive analyses (segment 3) and create visualizations and dashboards to upload to a webpage (segment 4).
* We observe donations data at county level in 6 battleground states between the years 2000-2020, and segment based on various demographic features to build a predictive model that indicates how constituents will choose to vote in this cycle of the presidential election
* To filter the data by ‘blue’ and ‘red’, we select prominent democrats and republicans in each state, showing whether people switch ‘sides’ during an election year in reaction to a major crisis event
* The problem statements guiding our analysis are:
 * Is there a significant transfer of donations from party to party between election years?
 * How do demographics (age, ethnicity, geographical delineations, employment status, employment, education, and party affiliation) in each county play into how constituents engage with donations?
 * Do these demographics have predictive power in presidential elections?

## Technology Stack
  * Our team is using the following tools to successfully collaborate and build our machine learning model:
    * Project Management: [Coda.io](http://coda.io)
    * Tools: Jupyter Notebook, Git, Google Colab
    * Frontend: Tableau, JavaScript, HTML5, CSS3, Angular, 
    * Backend: S3, PostgreSQL, BigQuery
    * Machine Learning Model: Logistical Regression, Linear Regression, RandomForest
    * Scikitlearn 
