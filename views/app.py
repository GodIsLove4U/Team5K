from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine
from flask import jsonify
from os import listdir
from os.path import isfile, join

postgres_db = {}
postgres_db['host'] = '34.67.52.115'
postgres_db['user'] = 'postgres'
postgres_db['port'] = '5432'
postgres_db['password'] = 'team5kteam5k'
postgres_db['db'] = 'team5k'

app = Flask(__name__)

postgres_url = 'postgresql://' + postgres_db["user"] + ":" + postgres_db["password"] + "@" + postgres_db["host"] + ":" + postgres_db["port"] + "/" + postgres_db["db"]
app.config["SQLALCHEMY_DATABASE_URI"] = postgres_url
db = SQLAlchemy(app)
engine = create_engine(postgres_url)

ML_TYPE_LR = "Linear_Regression"
ML_TYPE_VOTES = "Votes"
ML_TYPE_LOG = "Logistic_Regression"
ML_TYPE_RF = "Random_Forest"
ML_TYPE_US = "Unsupervised"
ML_TYPE_STATS_COUNTIES = "Stats_Counties"
ML_TYPE_STATS_DONATIONS = "Stats_Donations"
ML_TYPE_STATS_VOTES = "Stats_Votes"

TABLE_RES_LR = "res_lr"
TABLE_RES_LOG = "res_log"
TABLE_RES_RF = "res_rf"
TABLE_RES_VOTES = "res_votes"
TABLE_AGG_COUNTY_DONORS = "agg_county_donors"
TABLE_AGG_COUNTY_VOTES = "agg_county_votes"
TABLE_RES_COUNTIES = "res_counties"
TABLE_RES_STATS_DONATIONS = "res_stats_donations"
TABLE_RES_STATS_VOTES = "res_stats_voters"

SWING_STATES = ["AZ", "MI", "FL", "NC", "PA", "WI"]

@app.route("/")
def home():
    ml_types = ['', ML_TYPE_LR, ML_TYPE_LOG, ML_TYPE_RF, ML_TYPE_US, ML_TYPE_VOTES, ML_TYPE_STATS_COUNTIES, ML_TYPE_STATS_DONATIONS, ML_TYPE_STATS_VOTES]
    return render_template(
        "index.html",
        ml_types=ml_types
    )

def get_res_votes(state):
    print(f"get_res_votes {state}")

    table_name = f"res_votes_{state.lower()}"
    params_str = "*"
    query_str = f'SELECT {params_str} FROM "{table_name}";'

    stats = []
    total_blue = 0
    total_red = 0
    total_other = 0
    total_votes = 0
    total_blue_2016 = 0
    total_red_2016 = 0
    total_other_2016 = 0
    with engine.connect() as con:
        rows = con.execute(query_str)
        for row in rows:
            stat = {}
            county_blue = row[1]
            county_red = row[2]
            county_other = row[3]

            county_blue_percent = row[4]
            county_red_percent = row[5]
            county_other_percent = row[6]

            county_votes = row[7]
            stat["predict_blue_votes"] = county_blue
            stat["predict_red_votes"] = county_red
            stat["predict_other_votes"] = county_other
            stat["predict_blue_votes_percent"] = county_blue_percent
            stat["predict_red_votes_percent"] = county_red_percent
            stat["predict_other_votes_percent"] = county_other_percent

            blue_2016 = county_votes * county_blue_percent
            red_2016 = county_votes * county_red_percent
            other_2016 = county_votes * county_other_percent
            total_blue_2016 += blue_2016
            total_red_2016 += red_2016
            total_other_2016 += other_2016

            stat["predict_blue_total_votes"] = blue_2016
            stat["predict_red_total_votes"] = red_2016
            stat["predict_other_total_votes"] = other_2016
            stat["total_votes_2016"] = county_votes
            stat["state"] = row[8]
            stat["county"] = row[9]

            total_blue += county_blue
            total_red += county_red
            total_other += county_other
            total_votes += county_votes

            stats.append(stat)

    state_dict = {
        "stats": stats,
        "total_blue": total_blue,
        "total_red": total_red,
        "total_other": total_other,
        "total_votes": total_votes,
        "total_blue_2016": total_blue_2016,
        "total_red_2016": total_red_2016,
        "total_other_2016": total_other_2016
    }
    return state_dict

@app.route("/votes/<state>")
def votes_state(state=None):
    state_dict = get_res_votes(state)

    return jsonify({
        "state": state,
        "state_dict": state_dict
    })

@app.route("/votes")
def votes():
    return render_template(
        "votes.html",
        states= SWING_STATES
    )

@app.route("/ml/<ml_type>", methods=['POST', 'GET'])
def ml_type(ml_type=None):
    #print("ml_type")
    #print(ml_type)
    
    if ml_type == ML_TYPE_LR:
        stats = query_res_lr_sql()
    elif ml_type == ML_TYPE_LOG:
        stats = query_res_log_sql()
    elif ml_type == ML_TYPE_RF:
        stats = query_res_rf_sql()
    elif ml_type == ML_TYPE_US:
        stats = query_res_us_sql()
    elif ml_type == ML_TYPE_STATS_DONATIONS:
        stats = query_res_stats_donations_sql()
    elif ml_type == ML_TYPE_STATS_VOTES:
        stats = query_res_stats_votes_sql()
    elif ml_type == ML_TYPE_STATS_COUNTIES:
        stats = query_res_counties_sql()
    elif ml_type == ML_TYPE_VOTES:
        stats = query_res_votes_sql()

    return jsonify({
        "ml_type": ml_type,
        "stats": stats
    })

def query_res_lr_sql():
    print("query_res_lr_sql")

    params_str = "*"
    #params_str = "(state,sml_param,r2_score,file_name)"
    query_str = f"SELECT {params_str} FROM {TABLE_RES_LR};"
    
    stats = []
    with engine.connect() as con:
        rows = con.execute(query_str)
        for row in rows:
            stat = {}
            print("row = ")
            print(row)
            stat["state"] = row[1]
            stat["sml_param"] = row[2]
            stat["r2_score"] = row[3]
            stat["file_name"] = row[4]
            
            stats.append(stat)

    return stats

def query_filename_sql(table_name, type):
    print("query_filename_sql")

    #params_str = "(file_name,title)"
    params_str = "*"
    query_str = f"SELECT {params_str} FROM {table_name};"

    model_dir = ""
    if type == 1:
        model_dir = "county_cluster"
    elif type == 2:
        model_dir = "stats_votes"
    elif type == 3:
        model_dir = "stats_donation"
    else:
        model_dir = "votes"

    stats = []
    with engine.connect() as con:
        rows = con.execute(query_str)
        for row in rows:
            stat = {}
            print("row = ")
            print(row)
            f_name = row[1]
            stat["file_name"] = f_name
            stat["title"] = row[2]
            stat["file_path"] = f"./static/img/{model_dir}/{f_name}"

            stats.append(stat)

    return stats


def query_res_counties_sql():
    return query_filename_sql(TABLE_RES_COUNTIES, 1)

def query_res_stats_votes_sql():
    return query_filename_sql(TABLE_RES_STATS_VOTES, 2)

def query_res_stats_donations_sql():
    return query_filename_sql(TABLE_RES_STATS_DONATIONS, 3)

def query_res_votes_sql():
    #return query_filename_sql(TABLE_RES_COUNTIES, 4)
    return get_file_paths("./static/img/votes/")

def query_res_rf_sql():
    return query_log_sql(TABLE_RES_RF)

def query_res_log_sql():
    return query_log_sql(TABLE_RES_LOG)

def query_log_sql(table_name):
    print("query_log_sql")

    params_str = "*"
    #params_str = "(accuracy,recall,precision,f1,sml_param,state,file_name)"
    query_str = f"SELECT * FROM {table_name};"

    stats = []
    with engine.connect() as con:
        rows = con.execute(query_str)
        for row in rows:
            stat = {}
            print("row = ")
            print(row)
            stat["accuracy"] = row[1]
            stat["recall"] = row[2]
            stat["precision"] = row[3]
            stat["f1"] = row[4]
            stat["sml_param"] = row[5]
            stat["state"] = row[6]
            stat["file_name"] = row[7]

            stats.append(stat)

    return stats

def query_res_us_sql():
    print("query_res_us_sql")

    params_str = "(accuracy,recall,precision,f1,sml_param,state)"
    query_str = f"SELECT * FROM {TABLE_RES_LR};"

    stats = []
    with engine.connect() as con:
        rows = con.execute(query_str)
        for row in rows:
            stat = {}
            print("row = ")
            print(row)
            stat["accuracy"] = row[1]
            stat["recall"] = row[2]
            stat["precision"] = row[3]
            stat["f1"] = row[4]
            stat["sml_param"] = row[5]
            stat["state"] = row[6]

            stats.append(stat)

        return stats

def get_dir_filenames(file_dir):
    filenames = [f for f in listdir(file_dir) if isfile(join(file_dir, f))]
    return filenames

def get_file_paths(file_dir):
    filenames = get_dir_filenames(file_dir)

    stats = []
    for f in filenames:
        if not f.lower().endswith(".png"):
            continue

        filepath = file_dir + f
        stat = {
            "file_path": filepath
        }
        print(filepath)
        stats.append(stat)
    return stats

def query_table_sql(table_name, params_str):
    print("query_table_sql")
    query_str = f"SELECT {params_str} FROM {table_name};"

    cursor = engine.execute(query_str)
    rows = cursor.fetchall()
    filepaths = []
    stats = []
    for row in rows:
        filepath = row[-1]
        filepaths.append(filepath)

    return stats
