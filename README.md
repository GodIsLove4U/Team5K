# Team5K
## Introduction
* Our goal is to analyze the predictive power of political donations on presidential election outcomes in key battleground states in the United States. We will build predictive models using machine learning to understand how donations to political campaigns inform voting in counties and states. We will also look at times of economic and social crises and how it may impact and shift the parties to which voters choose to donate.
* We found that this topic could have impactful predictive power in understanding how times of crises can influence the outcomes of presidential elections. The state of the pandemic in the US paired with civil unrest throughout the country pose a dynamic background for the upcoming presidential elections. As active citizens, our group is invested in evaluating how events similar in magnitude have created shifts in political affiliation.
* This repository includes the following:
  * ETL: Files related to extracting and transforming raw data in queryable tables. 
  * Data Extracts: All CSV files holding raw data, before ETL process.
  * Data Model: Entity Relationship Diagrams (ERDs) related to data transformation.
  * Models: Jupyter Notebooks containing all machine learning algorithms, exploratory data analysis, and regression analysis code. Also includes files containing PNGs of resulting visualizations from analysis.
  * Preso_Info: All files related to final presentation and segment deliverables, including link to Google Slides [presentation](https://docs.google.com/presentation/d/1ijhyfkdBBYox_7o6rQUraLtBufkcBuDwIpVaxm5wSqs/edit?usp=sharing).
    * Includes project deliverables for [Segment 2](https://github.com/GodIsLove4U/Team5K/blob/master/preso_info/SegmentTwoProjectInfo-Team5K.pdf) including information on
       -Data exploration
       -Data analysis
       -Feature engineering
       -Preprocessing
       -Peer Review
       -Final Dashboard Description
       -Dashboard interactive elements
       -Data sources
  * Views: HTML files related to building interactive dashboard.

## Dataset Overview
* For our analysis, we are using publicly available datasets that evaluate the following features:
   * Voter Information
   * Demographics
     * Urban/rural
     * Average age
     * Education
     * County (trends within counties themselves)
     * Ethnicity
   * Unemployment data
     * year
     * month
     * season
   * Donations
     * How are voting habits are affected?
     * Filter out years to build a model to predict how counties in the 6 states will perform
   * Party Classifiers: Democrat or Republican
* Our datasets include:
   * Campaign donations aggregated in four year chunks (2000, 2004, 2008, 2012, 2016 and 2020). This will allow us to build a predictive model to determine how the county aggregate sum of each four year period impacts the number of actual votes received in the election year per county.
   * County zipcodes
   * Committee Name, Party Affiliation, Committee ID Table Mapping
   * Zipcode to County Table Mapping
   * Data on Democratic and Republican candidates in battleground states (top congressional or gubernatorial candidates in each battleground state)
    
## Methodology and Approach
  * By visualizing how political campaign donations between 2000 and 2020 have impacted election outcomes, we want to provide training data for our model in order to predict how political affiliations in battleground states (Arizona, Michigan, Pennsylvania, Florida, Wisconsin, North Carolina) swing between red and blue.
  * We will look at county level data in 6 battleground states between the years 2000-2020, and segment based on various demographic features to build a predictive model that indicates how constituents will choose to vote in this cycle of the presidential election.
  * To filter the data by ‘blue’ and ‘red’, we will pick prominent democrats and republicans in each state, showing whether people switches ‘sides’ during an election year in reaction to a major crisis event.
  * Our approach will be to understand the nuances of campaign donations and major crises in the US (segment 1), clean and normalize the raw data in a number of databases (segment 2), load the data into databases and perform statistical and predictive analyses (segment 3) and create visualizations and dashboards to upload to a webpage (segment 4).
  * Some problem statements we may address include answering:
    * Have other major recession events impacted how much/how frequently/whether people choose to donate to presidential campaigns?
    * Is there a significant transfer of donations from the republican party to democratic during times of crisis or vice versa?
    * How do demographics (age, ethnicity, geographical delineations, employment status, employment, education, and party affiliation) in each county play into how constituents engage with donations?
    * Do these demographics have predictive power in presidential elections?

## Technology Stack
  * Our team is using the following tools to successfully collaborate and build our machine learning model:
    * Project Management: [Coda.io](http://coda.io)
    * Tools: Jupyter Notebook, Git
    * Frontend: Tableau, JavaScript, HTML5, CSS3, Angular, 
    * Backend: S3, PostgreSQL, BigQuery
    * Machine Learning Model: Neural Networks, Supervised Machine Learning, Unsupervised Machine Learning.
    * Scikitlearn 
