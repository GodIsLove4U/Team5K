from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home(ml_type=None):
    ml_types = ['Linear Regression', 'Unsupervised', 'Donations', 'Votes']
    return render_template(
        "index.html",
        ml_types=ml_types
    )

@app.route("/ml/<ml_type>")
def ml_type(ml_type=None):
    return render_template(
        "ml_type.html",
        ml_type=ml_type
    )