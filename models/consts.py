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
import io
import os
# Imports the Google Cloud client library
from google.cloud import storage

#Constants used by the file

SML_TEST_SIZE = 0.25

#The start/end election years to run analysis
ELECTION_STARTING_YR = 2000
ELECTION_ENDING_YR = 2020
#ELECTION_ENDING_YR = 2003
ELECTION_INTERVAL = 4

#Total sum of donations per party per county
MAJOR_PARTIES = ["democrat", "republican", "other"]
#List of swing states to run the analysis on
SWING_STATES = ["AZ", "MI", "FL", "NC", "PA", "WI"]
#SQL Table Names
TABLE_AGG_DONORS = "agg_county_donors"
TABLE_AGG_VOTES = "agg_county_votes"
TABLE_SIX_STATE_DONATIONS = "six_state_donations"

#Column Names
VOTES_COLS = ["blue_votes", "red_votes", "other_votes", "total_votes", "county", "state", "election_year", "PopPct_Urban", "Unemployment", "PopDen_Urban", "PopPct_Rural", "PopDen_Rural", "winning_party"]
DONOR_COLS = ["blue_amt", "red_amt", "other_amt", "total_amt", "blue_num", "red_num", "other_num", "total_num", "county", "state", "election_year"]    

# Configure settings for RDS
# Defining db info in config var
jdbc_url="jdbc:postgresql://34.67.52.115/team5k"
CONFIG = {'user': 'postgres', 
          "password": "team5kteam5k", 
          "driver":"org.postgresql.Driver",
          "location": "34.67.52.115",
          "db": "team5k",
          "port": "5432"}

DROP_AGG_TABLE = True
#postgres://[user]:[password]@[location]:[port]/[database]
CREATE_ENGINE_STR = 'postgresql://' + CONFIG["user"] + ":" + CONFIG["password"] + "@" + CONFIG["location"] + ":" + CONFIG["port"] + "/" + CONFIG["db"]

#Define the bucket to save the images from the LR Regression
G_FOLDER_LINEAR = "linear"
G_FOLDER_LOGISTIC = "logistic"
G_FOLDER_SVC = "svc"
G_FOLDER_UNSUPERVISED = "unsupervised"

G_BUCKET_MODEL = "model_results"

def select_columns(df, column_names):
    new_frame = df.loc[:, column_names]
    return new_frame

def label_enc(df):
    # Create encoder
    le = LabelEncoder()
    # Encode first DataFrame 1 (where all values are floats)
    df = df.apply(lambda col: le.fit_transform(col.astype(str)), axis=0, result_type='expand')
    return df

#Add a new column party to the DF that maps the committee party abbreviation to a major party
def merge_cmtid_party(donor_df):        
    #Get the major party strings to map to 
    party_repub = MAJOR_PARTIES[1]
    party_democrat = MAJOR_PARTIES[0]
    party_other = "other"
    
    #Map the affiliation code to the party affiliation
    cmte_party_map = {
        "REP": party_repub,
        "TEA": party_repub,
        "DNL": party_democrat,
        "DNL": party_democrat,
        "DEM": party_democrat,
        "D/C": party_democrat,
        "DFL": party_democrat,
        "THD": party_democrat,
        "PPD": party_democrat,
        "UNK": party_other
    }
    
    donor_df["party"] = donor_df["CMTE_PTY_AFFILIATION"].map(cmte_party_map)
    
    return donor_df

def save_image_to_gcloud_lr(plt, file_name):
    save_image_to_gcloud(plt, G_BUCKET_MODEL, G_FOLDER_LINEAR, file_name)

def save_image_to_gcloud_log(plt, file_name):
    save_image_to_gcloud(plt, G_BUCKET_MODEL, G_FOLDER_LOGISTIC, file_name)

def save_image_to_gcloud_svc(plt, file_name):
    save_image_to_gcloud(plt, G_BUCKET_MODEL, G_FOLDER_SVC, file_name)

def save_image_to_gcloud_unsupervised(plt, file_name):
    save_image_to_gcloud(plt, G_BUCKET_MODEL, G_FOLDER_UNSUPERVISED, file_name)

def save_image_to_gcloud(plt, bucket_name, folder_name, file_name):
    #Set gloud credentials.
    os.environ["GOOGLE_APPLICATION_CREDENTIALS"]="/Users/C454479/Desktop/Codebases/data/gcloud/gcloud_creds.json" 
    
    client = storage.Client()
    bucket = client.get_bucket(bucket_name)

    #filename = f"{folder_name}/{file_name}"
    blob = bucket.blob(file_name)

    # temporarily save image to buffer
    buf = io.BytesIO()
    plt.savefig(buf, format='png')

    # upload buffer contents to gcs
    blob.upload_from_string(
        buf.getvalue(),
        content_type='image/png')
    buf.close()

    # Uploading from a local file using open()
    #with open('photo.jpg', 'rb') as photo:
    #    blob.upload_from_file(photo)

    # Uploading from local file without open()
    #blob.upload_from_filename('photo.jpg')

    # gcs url to uploaded matplotlib image
    #url = blob.public_url

	#blob.make_public()
	#url = blob.public_url
	#print(f"Image URL - {url}")