# Team5K
## Introduction
  * Our main goal is to analyze the predictive power of political donations on presidential election outcomes in key battleground states in the United States. We will build predictive models using machine learning to understand how donations to political campaigns inform voting in counties and states. We will also look at times of economic and social crises and how it may impact and shift the parties to which voters choose to donate.
  * We found that this topic could have impactful predictive power in understanding how times of crises can influence the outcomes of presidential elections. The state of the pandemic in the US paired with civil unrest throughout the country pose a dynamic background for the upcoming presidential elections. As active citizens, our group is invested in evaluating how events similar in magnitude have created shifts in political affiliation.

## Dataset Overview
* For our analysis, we are using publicly available datasets that evaluate the following features:
   * Crises
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
   * Campaign donations data during the dotcom bubble burst and the period prior (early 2000s data).
   * Campaign donations data during the financial crisis and the period after (2008-2016 data).
   * Campaign donations data prior to and during COVID19 (2016-2020 data).
   * Campaign donations aggregated in four year chunks (2000, 2004, 2008, 2012, 2016 and 2020). This will allow us to build a predictive model to determine how the county aggregate sum of each four year period impacts the number of actual votes received in the election year per county.
   * COVID19 county-level infection data
   * County zipcodes
   * Committee Name, Party Affiliation, Committee ID Table Mapping
   * Zipcode to County Table Mapping
   * Data on Democratic and Republican candidates in battleground states (top congressional or gubernatorial candidates in each battleground state)
    
## Methodology and Approach
  * By visualizing how crises between 2000 and 2020 (dotcom bubble, financial crisis, COVID19) have impacted campaign donations, we want to provide training data for our model in order to predict how political affiliations in battleground states (Arizona, Michigan, Pennsylvania, Florida, Wisconsin, North Carolina) swing between red and blue.
  * We will look at county level data in 6 battleground states between the years 2000-2020, and segment based on various demographic features to build a predictive model that indicates how constituents will choose to vote in this cycle of the presidential election.
  * To filter the data by ‘blue’ and ‘red’, we will pick prominent democrats and republicans in each state, showing whether people switches ‘sides’ during an election year in reaction to a major crisis event.
  * We will create an additional predictive model for COVID19 by first analyzing county data in Florida (we choose Florida because it will offer the greatest number of data points), and expand the methodology to other states if we are successful.
  * Our approach will be to understand the nuances of campaign donations and major crises in the US (segment 1), clean and normalize the raw data in a number of databases (segment 2), load the data into databases and perform statistical and predictive analyses (segment 3) and create visualizations and dashboards to upload to a webpage (segment 4).
  * Some problem statements we may address include answering:
    * Has COVID impacted if/how much voters are donating this year?
    * How does donor behavior differ between COVID crisis vs other crises?
    * Have other major recession events impacted how much/how frequently/whether people choose to donate to presidential campaigns?
    * Is there a significant transfer of donations from the republican party to democratic during times of crisis or vice versa?
    * How do demographics (age, ethnicity, geographical delineations, employment status, employment, education, and party affiliation) in each county play into how constituents engage with donations?
    * Do these demographics have predictive power in presidential elections?

## Communication Protocols
  * Our team has committed to ongoing communication via Slack and Coda.
  * We participate in standing Zoom sessions from 4-5PM on weekdays, 10am Saturdays, 12:30pm Sundays
  * Our team communicates regularly, and uses Tuesday/Thursday breakout sessions to refine our machine learning model, ensure our database is correctly set-up, and review changes and commits to GitHub.
  * Each member of the team has their own branch listed under their respective first names. In addition, we have a branch to store data files (data_storage) along with the master branch.

## Technology Stack
  * Our team is using the following tools to successfully collaborate and build our machine learning model:
    * Project Management: Coda.io
    * Tools: Jupyter Notebook, Git
    * Frontend: Tableau, JavaScript, HTML5, CSS3, Angular, 
    * Backend: S3, PostgreSQL, BigQuery
    * Machine Learning Model: Neural Networks, Supervised Machine Learning, Unsupervised Machine Learning.
    * Scikitlearn 
