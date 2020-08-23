# ETL Overview

This document contains all the workbooks that were used to extract the data and load it into the Postgres data base where it was then used for modeling

## Solutions used

Data was sourced from various public file sets including FEC and the Census.  Total data from these file sets   These files were downloaded and placed in Google Cloud Storage.  Zipped up files exceed 6GB, which when extracted, would exceeds 10 6GB

Once in Cloud Storage, Colab Notebooks and Pyspark were used to extract the CSV, format, define the schema, and pre-process the data.  Once in a cleansed data frame, the data was written to a Postgres database

## Campaign Donation Dataload approach

While FEC has a wealth of data, it is stored in 3 different master files and parsed into 2 year increments.  Given that each file is zipped, it would be very manual to extract, stage and run a Notebook to complete the ETL, so reusable functions were needed.  Steps for each master was

1 Do a get of the file<BR>
2 Define the schema of the Pyspark dataframe<BR>
2 Extract the main data file<BR>
3 Create a Pyspark dataframe and filter for the six swing states<BR>
4 Do a append of the data into the target table in the Postgres database<BR>
<BR>
This function was called for each year.  Calls were parsed into multiple cells to avoid a time-out by the Colab runtime

## Datasets

FEC Data was loaded based upon master<BR>
Campaign_full_load - Loads all donation data from 2000 onward<BR>
Committee_Full load - Loads all committee master data<BR>
Candidate - Loads all data from the Candidate master<BR>
Education_and_Unemployment_Metrics - Loads valuable census data to help do County level analysis<BR>
Health_and_Postal_Code_loading - Loads county-level health metrics and the table to do the Postal Code to county lookup<BR>
