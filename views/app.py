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
ML_TYPE_LOG = "Logistic_Regression"
ML_TYPE_US = "Unsupervised"
ML_TYPE_STATS_DONATIONS = "Stats_Donations"
ML_TYPE_STATS_VOTES = "Stats_Votes"

TABLE_RES_LR = "res_lr"
TABLE_RES_LOG = "res_log"
TABLE_AGG_COUNTY_DONORS = "agg_county_donors"
TABLE_AGG_COUNTY_VOTES = "agg_county_votes"

@app.route("/")
def home():
    ml_types = ['', ML_TYPE_LR, ML_TYPE_LOG, ML_TYPE_US, ML_TYPE_STATS_DONATIONS, ML_TYPE_STATS_VOTES]
    return render_template(
        "index.html",
        ml_types=ml_types
    )

@app.route("/ml/<ml_type>", methods=['POST', 'GET'])
def ml_type(ml_type=None):
    #print("ml_type")
    #print(ml_type)
    
    filenames = []
    if ml_type == ML_TYPE_LR:
        stats = query_res_lr_sql()
    elif ml_type == ML_TYPE_LOG:
        stats = query_res_log_sql()
    elif ml_type == ML_TYPE_US:
        stats = query_res_us_sql()
    elif ml_type == ML_TYPE_STATS_DONATIONS:
        stats = query_res_stats_donations_sql()
    elif ml_type == ML_TYPE_STATS_VOTES:
        stats = query_res_stats_votes_sql()

    return jsonify({
        "ml_type": ml_type,
        "stats": stats
    })

def query_res_lr_sql():
    print("query_res_lr_sql")

    params_str = "(state,sml_param,r2_score,file_name)"
    query_str = f"SELECT * FROM {TABLE_RES_LR};"
    
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

def query_res_log_sql():
    print("query_res_log_sql")

    params_str = "(accuracy,recall,precision,f1,sml_param,state)"
    query_str = f"SELECT * FROM {TABLE_RES_LOG};"

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

def query_res_us_sql():
    print("query_res_log_sql")

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

def query_res_stats_donations_sql():
    file_dir = "./static/img/stats_donation/"
    filepaths = get_file_paths(file_dir)
    return filepaths

def query_res_stats_votes_sql():
    file_dir = "./static/img/stats_votes/"
    filepaths = get_file_paths(file_dir)
    return filepaths

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
