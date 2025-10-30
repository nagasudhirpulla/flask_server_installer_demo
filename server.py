from flask import Flask, render_template
import json

appConf = {}
with open("config/config.json") as f:
    appConf = json.load(f)

app = Flask(__name__)


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/about")
def about():
    return render_template("about.html")


app.run(host=appConf["host"], port=appConf["port"], debug=appConf["debug"])
