# Importing using libraries into the context of our script
# Think of this as including a file (instruction) that exists
# somewhere else.
from flask import Flask, jsonify
import subprocess

app = Flask(__name__)

# As we are making web based api, apply an http decorator.
# This decorator, provided from the flask library, handles
# make our endpoint access through http tunnels.
# Following the decorator is our standard method definiton
# and body.
@app.route('/getAll', method=['GET'])
def get_all():
  return jsonify([
    {
      's_brand': "Drugs-r-us",
      's_name': "Crap Pills",
      'i_quantity': 500
    },
    {
      's_brand': "Drugs-r-us",
      's_name': "Super Pills",
      'i_quantity': 100
    }
  ])

# This starts the loop that is our application - keeping it alive
# and ready for interaction from the User Interface
if __name__ == '__main__':
  app.run(debug=True, port=4201)