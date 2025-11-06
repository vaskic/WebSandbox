from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    # Získání URL databáze z env proměnné
    db_url = os.getenv("DATABASE_URL")
    return f"Hello from Flask!<br>Database URL: {db_url}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
