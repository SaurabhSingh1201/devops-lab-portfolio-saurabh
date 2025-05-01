from flask import Flask
import random
import time

app = Flask(__name__)

@app.route('/metrics')
def metrics():
    return f"# HELP random_metric A random metric\nrandom_metric {random.randint(1, 100)}\n"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8000)