#!/usr/bin/env python3
from flask import Flask, request, render_template
from data import Articles

app = Flask(__name__)

Articles = Articles()

@app.route("/ip_assassin", methods=['GET'])
def main():
	return render_template("ass_home.html")

@app.route("/ip_assassin", methods=['POST'])
def form_post():
	acct = request.form['acct']
	addr = request.form['addr']
	return render_template("submit.html", ACCT=acct, ADDR=addr)

if __name__ == "__main__":
	#app.run(host= '0.0.0.0')
	app.run()
