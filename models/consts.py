#Constants used by the file

#The start/end election years to run analysis
ELECTION_STARTING_YR = 2000
ELECTION_ENDING_YR = 2020
ELECTION_INTERVAL = 4

#Total sum of donations per party per county
MAJOR_PARTIES = ["democrat", "republican"]
#List of swing states to run the analysis on
SWING_STATES = ["AZ", "MI", "FL", "NC", "PA", "WI"]
TABLE_AGG_DONORS = "agg_county_donors"
TABLE_AGG_VOTES = "agg_county_votes"
VOTES_COLS = ["blue_votes", "red_votes", "other_votes", "total_votes", "percent_blue", "percent_red", "percent_other", "county", "state", "election_year"]
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