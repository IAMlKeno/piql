from flask import Flask, jsonify
import subprocess

app = Flask(__name__)

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