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
#from google.cloud import storage

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

TABLE_RES_LR = "res_lr"
TABLE_RES_LOG = "res_log"
TABLE_RES_SVC = "res_svc"

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
    obj_list = df.select_dtypes(include = "object").columns
    # Create encoder
    le = LabelEncoder()
    for feat in obj_list:
        df[feat] = le.fit_transform(df[feat].astype(str))
    return df

#Add a new column party to the DF that maps the committee party abbreviation to a major party
def merge_cmtid_party(donor_df):        
    #Get the major party strings to map to 
    party_democrat = MAJOR_PARTIES[0]
    party_repub = MAJOR_PARTIES[1]
    party_other = MAJOR_PARTIES[2]
    party_not_found = "N/A"

    #Map out all party IDs that map to a left wing party 
    cmte_blue_map = {
        "CIT": party_democrat,
        "CMP": party_democrat,
        "COM": party_democrat,
        "D/C": party_democrat,
        'DCG': party_democrat,
        "DEM": party_democrat,
        'DFL': party_democrat,
        "DNL": party_democrat,
        "GR": party_democrat,
        "GRE": party_democrat,
        "GRT": party_democrat,
        "GWP": party_democrat,
        "HRP": party_democrat,
        "HRP": party_democrat,
        "ICD": party_democrat,
        "LAB": party_democrat,
        "LBL": party_democrat,
        "LBU": party_democrat,
        "LIB": party_democrat,
        "LRU": party_democrat,
        "NAP": party_democrat,
        "NDP": party_democrat,
        "PAF": party_democrat,
        "PFD": party_democrat,
        "PFP": party_democrat,
        "PRI": party_democrat,
        "PRO": party_democrat,
        "PSL": party_democrat,
        "RUP": party_democrat,
        "SEP": party_democrat,
        "SLP": party_democrat,
        "SOC": party_democrat,
        "SUS": party_democrat,
        "SWP": party_democrat,
        "THD": party_democrat,
        "UC": party_democrat,
        "USP": party_democrat
    }

    cmte_red_map = {
        "AIC": party_repub,
        "AIP": party_repub,
        "AKI": party_repub,
        "AMP": party_repub,
        "APF": party_repub,
        "CNC": party_repub,
        "CON": party_repub,
        "CRV": party_repub,
        "CST": party_repub,
        "FRE": party_repub,
        "IAP": party_repub,
        "NDP": party_repub,
        "NJC": party_repub,
        "RTL": party_repub,
        "TEA": party_repub,
        "UST": party_repub,
        "WTP": party_repub
    }

    cmte_other_map = {
        "ACE": party_other,
        "AE": party_other,
        "CMD": party_other,
        "COU": party_other,
        "DGR": party_other,
        "FED": party_other,
        "FLP": party_other,
        "IDE": party_other,
        "IDP": party_other,
        "IGD": party_other,
        "IGR": party_other,
        "IND": party_other,
        "IP": party_other,
        "JCN": party_other,
        "JUS": party_other,
        "LBR": party_other,
        "LFT": party_other,
        "MTP": party_other,
        "N": party_other,
        "NA": party_other,
        "NLP": party_other,
        "NNE": party_other,
        "NON": party_other,
        "NOP": party_other,
        "NPA": party_other,
        "NPP": party_other,
        "OE": party_other,
        "OTH": party_other,
        "PCH": party_other,
        "PG": party_other,
        "POP": party_other,
        "PPD": party_other,
        "PPY": party_other,
        "REF": party_other,
        "RES": party_other,
        "TWR": party_other,
        "TX": party_other,
        "UN": party_other,
        "UNI": party_other,
        "UNK": party_other,
        "VET": party_other,
        "W": party_other
    }

    cmte_party_map = {}
    cmte_party_map.update(cmte_blue_map)
    cmte_party_map.update(cmte_red_map)
    cmte_party_map.update(cmte_other_map)

    #Map from party code to dem/rep and have other party as default
    donor_df["party"] = donor_df["CMTE_PTY_AFFILIATION"].map(cmte_party_map).fillna(party_not_found).astype(str)

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