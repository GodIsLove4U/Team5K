# Import dependencies
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
import json
import pandas as pd
from pandas.io import sql
import numpy as np
from sklearn.linear_model import LinearRegression
import matplotlib.pyplot as plt
import datetime
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler, OneHotEncoder, LabelEncoder, MinMaxScaler
from sklearn.metrics import confusion_matrix, classification_report, accuracy_score
from sklearn.linear_model import LogisticRegression
import numpy
from mpl_toolkits.mplot3d import Axes3D
import seaborn as sns

#Constants used by the file

SML_TEST_SIZE = 0.25

#The start/end election years to run analysis
ELECTION_STARTING_YR = 2000
ELECTION_ENDING_YR = 2020
ELECTION_INTERVAL = 4

#Total sum of donations per party per county
MAJOR_PARTIES = ["democrat", "republican"]
#List of swing states to run the analysis on
SWING_STATES = ["AZ", "MI", "FL", "NC", "PA", "WI"]
#SQL Table Names
TABLE_AGG_DONORS = "agg_county_donors"
TABLE_AGG_VOTES = "agg_county_votes"
#Column Names
VOTES_COLS = ["blue_votes", "red_votes", "other_votes", "total_votes", "percent_blue", "percent_red", "percent_other", "county", "state", "election_year", "PopPct_Urban", "Unemployment", "PopDen_Urban", "PopPct_Rural", "PopDen_Rural"]
DONOR_COLS = ["blue_amt", "red_amt", "other_amt", "total_amt", "percent_blue", "percent_red", "percent_other", "county", "state", "election_year"]    

# Configure settings for RDS
# Defining db info in config var
jdbc_url="jdbc:postgresql://34.67.52.115/team5k"
CONFIG = {'user': 'postgres', 
          "password": "team5kteam5k", 
          "driver":"org.postgresql.Driver",
          "location": "34.67.52.115",
          "db": "team5k",
          "port": "5432"}

#postgres://[user]:[password]@[location]:[port]/[database]
CREATE_ENGINE_STR = 'postgresql://' + CONFIG["user"] + ":" + CONFIG["password"] + "@" + CONFIG["location"] + ":" + CONFIG["port"] + "/" + CONFIG["db"]

def select_columns(df, column_names):
    new_frame = df.loc[:, column_names]
    return new_frame

def label_enc(df):
    # Create encoder
    le = LabelEncoder()
    # Encode first DataFrame 1 (where all values are floats)
    df = df.apply(lambda col: le.fit_transform(col.astype(str)), axis=0, result_type='expand')
    return df