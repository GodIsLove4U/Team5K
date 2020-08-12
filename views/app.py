from flask import Flask, render_template
from flask_mysqldb import MySQL

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'MyDB'

mysql = MySQL(app)

ML_TYPE_LR = "Linear Regression"
ML_TYPE_US = "Unsupervised"
ML_TYPE_STATS_DONATIONS = "Stats: Donations"
ML_TYPE_STATS_VOTES = "Stats: Votes"

TABLE_RES_LR = "res_lr"
TABLE_RES_LOG = "res_log"
TABLE_AGG_COUNTY_DONORS = "agg_county_donors"
TABLE_AGG_COUNTY_VOTES = "agg_county_votes"

@app.route("/")
def home():
    #"Logistics"
    ml_types = ['', 'Linear Regression', 'Unsupervised', 'Stats: Donations', 'Stats: Votes']
    return render_template(
        "index.html",
        ml_types=ml_types
    )

@app.route("/ml/<ml_type>", methods=['POST', 'GET'])
def ml_type(ml_type=None):
    print("ml_type")
    print(ml_type)
    
    if ml_type == ML_TYPE_LR:
        query_res_lr_sql()
    elif ml_type == ML_TYPE_US:
        query_res_us_sql()
    elif ml_type == ML_TYPE_STATS_DONATIONS:
        query_res_stats_donations_sql()
    elif ml_type == ML_TYPE_STATS_VOTES:
        query_res_stats_votes_sql()

    return render_template(
        "ml_type.html",
        ml_type=ml_type
    )

def query_res_lr_sql():
    query_table_sql(TABLE_RES_LR)

def query_res_log_sql():
    query_table_sql(TABLE_RES_LOG)

def query_res_us_sql():
    query_table_sql(TABLE_RES_LR)

def query_res_stats_donations_sql():
    query_table_sql(TABLE_AGG_COUNTY_DONORS)

def query_res_stats_votes_sql():
    query_table_sql(TABLE_AGG_COUNTY_VOTES)

def query_table_sql(table_name):
    cur = mysql.connection.cursor()
    sql_str = f"SELECT * FROM {table_name};"
    results = cur.execute(sql_str)
    print(results)
    mysql.connection.commit()
    cur.close()
