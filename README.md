We plan on understanding how political campaign donations function and evolve in the midst of economic and social crises. By visualizing how crises between 2000 and 2020 (financial crisis, dotcom bubble, COVID19) have impacted donations, we want to understand trends over time in donations and how battleground states swing between red and blue. In particular, we want to establish the effect of crises on the campaign donation activity in battleground states. As a bonus activity, we would like to: 
* Create a real-time dashboard to track how campaign donations are evolving during the ongoing COVID19 pandemic
* Assess campaign donations data for the same crises in historically ‘blue’ (California, New York, Maine) and ‘red’ (Texas, Mississippi, Alabama) states to establish a baseline and see whether constituents of these states reconsider their donations to presidential campaigns during times of crisis


What are the steps we are taking to achieve this?
* We will look at county level data in 6 battleground states (Arizona, North Carolina, Michigan, Florida, Wisconsin, Pennsylvania) between the years 2000-2020
* To filter the data by  ‘blue’ and ‘red’, we will pick 50 prominent democrats and republicans in each state to, showing whether people switched “sides” during an election year in reaction to a major crisis event
* We will create an additional predictive model for COVID19 by first analyzing county data in Florida (we choose Florida because it will offer the greatest number of data points), and expand the methodology to other states in case we are successful
* Our approach will be to understand the nuances of campaign donations and major crises in the US (segment 1), clean and normalize the raw data in a number of databases (segment 2), load the data into databases and perform statistical and predictive analyses (segment 3) and create visualizations and dashboards to upload to a webpage (segment 4)

## Idea
Goal: Use democratic and republican donations data to assess whether major economic and social events in the United States impact donations to presidential campaigns. Some questions/pieces of data we will assess include:
  * How much money do people donate on average?
  * What is the scale (highest/lowest) that people donate?
  * How are donations impacted by an election year?
  * What changes in donation amounts did we observe during the financial crash?
  * What changes in donation amounts did we observe during the Dotcom bubble?
  * What changes in donation amounts are we observing during COVID19?
  * Do crises cause changes in where states donate (blue vs red)?
* We will build predictive models from financial crisis/housing market crash/Dotcom bubble data and impact on donations

## Problem Statements
* Has COVID impacted if/how much voters are donating this year?
* How does donor behavior differ between COVID crisis vs other crises?
* Have other major recession events impacted how much/how frequently/whether people choose to donate to presidential campaigns?

## Communication Protocols
* Team has committed to ongoing communication via Slack & Coda
* We have a standing Zoom session from 4-5PM on weekdays, 10AM Saturdays, 12:30PM Sundays
* Team communicates regularly during Tuesday/Thursday breakout sessions

## Source Data
* Battleground States (6) Dataset per state 2000-2020 all donations
  * FL: 3978651
  * AZ: 1614510
  * WI: 1156782
  * NC: 1645075
  * MI: 2107941
  * PA: 3156260
* Campaign donations data during the dotcom bubble burst and the period after (early 2000s data)
* Campaign donations data during the financial crisis and the period after (2008-2016 data)
* Campaign donations data prior to and during COVID19 (2016-2020 data)
* COVID19 county-level infection data
* County zipcodes
* Committee Name to Committee ID Table Mapping
* Zipcode to County Table Mapping
* Data on Democratic and Republican candidates in battleground states (top 50 congressional or gubernatorial candidates in each battleground state)

## Technology
* Project Management: Coda.io
* Communication Protocols: Slack, Zoom (6-8 hours weekly), Class session breakouts
* Tools: Jupyter Notebook, Git
* Frontend: Tableau, JavaScript, HTML5, CSS3, Angular, 
* Backend: S3, PostgreSQL, 
* Machine Learning Model: Neural Networks, Supervised Machine Learning, Unsupervised Machine Learning.
* Scikitlearn 
