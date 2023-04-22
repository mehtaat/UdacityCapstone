from flask import Flask, escape, request
app = Flask(__name__)


@app.route('/')
def udacity():
    return "<h1 style='text-align: center;'>Welcome to Cloud DevOps Udacity Capstone Project!</h1>"


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=80)
