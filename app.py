

from flask import Flask

app = Flask(__name__)
@app.route("/")
def home():
    print("hellow, world!")
    return "Welcome to my 'API'!"

if __name__ == "__main__":
    app.run(debug=True)
