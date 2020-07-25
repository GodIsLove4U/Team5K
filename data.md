# Project Resources

## Data sets
Data for this project will be staged in Google Cloud Storage because size of the donation database exceeds 5GB
https://console.cloud.google.com/storage/browser/team5k

## Postgres Database
Server is 34.67.52.115
Database is team5k

Everyone should have a read user name<br>
-doris<br>
-josh<br>
-kanika<br>
-paul<br>

User name and Password are the same

BigQuery
Given the data set, I have created a BigQuery Data Set.  This makes it easier for us to quickly query the data and use in different ways
https://console.cloud.google.com/bigquery?p=peak-service-272615&d=team5k&page=dataset

In my experience, BigQuery works better with very large data sets, and the data forced the Postgres database to be 30gb, with just the individual contribution file.  It is also easy to quickly profile the data.  BigQuery works with Tableau, but it also has its own Dashboarding tool.   
