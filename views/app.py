from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine
from flask import jsonify

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
    #"Logistics"
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
    params_str = "(state,sml_param,r2_score,file_name)"
    print("query_table_sql")
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
    params_str = "*"
    return query_table_sql(TABLE_RES_LOG, params_str)

def query_res_us_sql():
    params_str = "*"
    return query_table_sql(TABLE_RES_LR, params_str)

def query_res_stats_donations_sql():
    params_str = "*"
    return query_table_sql(TABLE_AGG_COUNTY_DONORS, params_str)

def query_res_stats_votes_sql():
    params_str = "*"
    return query_table_sql(TABLE_AGG_COUNTY_VOTES, params_str)

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
