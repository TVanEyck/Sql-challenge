# justice league

from flask import Flask, jsonify

# Dictionary of Justice League
justice_league_members = [
    {"superhero": "Aquaman", "real_name": "Arthur Curry"},
    {"superhero": "Batman", "real_name": "Bruce Wayne"},
    {"superhero": "Cyborg", "real_name": "Victor Stone"},
    {"superhero": "Flash", "real_name": "Barry Allen"},
    {"superhero": "Green Lantern", "real_name": "Hal Jordan"},
    {"superhero": "Superman", "real_name": "Clark Kent/Kal-El"},
    {"superhero": "Wonder Woman", "real_name": "Princess Diana"}
]

#################################################
# Flask Setup
#################################################
# @TODO: Initialize your Flask app here

app = Flask(__name__)


#################################################
# Flask Routes
#################################################

# @TODO: Complete the routes for your app here

#@app.route("/")
#def home():
#    return "Hi"


#@app.route("/normal")
#def normal():
#    return justice_league_members


@app.route("/api/v1.0/justice-league")
def jsonified():
    return jsonify(justice_league_members)

@app.route("/")
def welcome():
        return (
            f"welcome to the Justice League API!<br/>"
            f"Available Routes:<br/>"
            f"/api/v1.0/justice-league"
        )


if __name__ == "__main__":
    # @TODO: Create your app.run statement here
    app.run(debug=True)


