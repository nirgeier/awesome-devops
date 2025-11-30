from flask import Flask, request, jsonify, render_template
import sqlite3
import os

app = Flask(__name__, template_folder="templates")

DB_PATH = "/data/database.db"

# Ensure /data exists
os.makedirs("/data", exist_ok=True)

# Initialize database and table
def init_db():
    try:
        conn = sqlite3.connect(DB_PATH)
        c = conn.cursor()
        c.execute("""
            CREATE TABLE IF NOT EXISTS values_table (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                value TEXT NOT NULL,
                timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
            );
        """)
        conn.commit()
        conn.close()
        print(f"Database initialized at {DB_PATH}")
    except Exception as e:
        print(f"Error initializing database: {e}")

init_db()

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/add", methods=["POST"])
def add_value():
    try:
        data = request.get_json() or {}
        value = data.get("value")
        if not value:
            return jsonify({"error": "Missing value"}), 400

        conn = sqlite3.connect(DB_PATH)
        c = conn.cursor()
        c.execute("INSERT INTO values_table (value) VALUES (?)", (value,))
        conn.commit()
        conn.close()

        return jsonify({"status": "added", "value": value}), 201
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route("/list", methods=["GET"])
def list_values():
    try:
        conn = sqlite3.connect(DB_PATH)
        c = conn.cursor()
        c.execute("SELECT id, value, timestamp FROM values_table")
        rows = c.fetchall()
        conn.close()

        return jsonify([
            {"id": r[0], "value": r[1], "timestamp": r[2]}
            for r in rows
        ])
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)

