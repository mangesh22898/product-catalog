# app.py
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/products")
def products():
    return jsonify([
        {"id": 1, "name": "RFID Business Card", "price": 9.99},
        {"id": 2, "name": "Custom Printed Card", "price": 14.99}
    ])

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

