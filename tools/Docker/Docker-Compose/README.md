# Docker UI + Database Project

This project demonstrates a simple 2-container Docker setup:

- **UI Container (Flask App)**  
  Receives values from a user and stores them in a database.

- **DB Container (Lightweight Alpine)**  
  Holds a persistent SQLite database file using a shared Docker volume.

---

## 📂 Project Structure

```
project/
│
├── ui/
│   ├── app.py                 # Flask application
│   ├── requirements.txt       # Python dependencies
│   ├── Dockerfile             # Dockerfile for UI container
│   ├── templates/
│   │   └── index.html         # HTML page for the browser UI
│   └── static/
│       └── styles.css         # CSS styling for the UI
│
├── db/
│   └── Dockerfile             # Minimal Alpine container for database volume
│
└── docker-compose.yml         # Docker Compose configuration

```

---

## How It Works

### UI Container

The UI is a Python Flask application that:

1. Initializes a SQLite database (`database.db`) on startup.
2. Exposes two API routes:

#### POST `/add`
Adds a new value to the DB.

Example request:
```bash
curl -X POST http://localhost:5000/add \
  -H "Content-Type: application/json" \
  -d '{"value": "Hello World"}'
```

#### GET `/list`
Returns all stored values.

Example:
```bash
curl http://localhost:5000/list
```

---

### DB Container

This container does not run a database engine.  
Instead, it:

- Creates a `/data` directory
- Hosts the SQLite database file  
- Exposes the folder through a **Docker volume**, making the data persistent
- Serves as a shared storage backend for the UI container

This architecture keeps the DB separate and easily replaceable.

---

## Docker Compose Flow

- A shared volume named **`dbdata`** is created.
- The **db** container exposes `/data`.
- The **ui** container mounts the same `/data` folder.
- SQLite file `database.db` lives inside that shared volume.

---

## How to Run the Project From the browser:

### 1. Clone the project
```bash
git clone <your-repository-url>
cd project
```

### 2. Build and run with Docker Compose
```bash
docker compose up --build
```

You will see:

- `db_service` → starts and waits  
- `ui_service` → starts Flask on port **5000**

### 3. Open the browser and run:

``` bash
http://localhost:5000
```
#### In the UI itself:
- Enter a value in the input field and press "Add" button or press the Enter key.
- Values are displayed in a table below.
- The table automatically refreshes every 2 seconds to show all stored values.

---


## How to Run the Project from the CLI:

### 1. Clone the project
```bash
git clone <your-repository-url>
cd project
```

### 2. Build and run with Docker Compose
```bash
docker compose up --build
```

You will see:

- `db_service` → starts and waits  
- `ui_service` → starts Flask on port **5000**

---

### 3. Test the API

### Add a value:
```bash
curl -X POST http://localhost:5000/add \
  -H "Content-Type: application/json" \
  -d '{"value": "Test"}'
```

### Get all values:
```bash
curl http://localhost:5000/list
```

---

## What it should be like:

### Input as example:

``` bash 
curl -X POST http://localhost:5000/add -H "Content-Type: application/json" -d '{"value": "This is only a test"}'
```

### Output should be something like:

``` bash 
{"message":"Value inserted successfully"}
```

## Result output:

### When you run this:

``` bash
curl http://localhost:5000/list
```

### You should see the value you entered:

``` bash 
[{"id":1,"value":"This is only a test"}]
```

#### You can run and add another value, then list it. 
#### Now you should see 2 records.




## Stopping Everything

```bash
docker compose down
```

To delete the persistent DB:

```bash
docker volume rm project_dbdata
```

---

## Notes

- Database persists even after containers stop.
- You can swap SQLite for PostgreSQL easily later.
- Very useful structure for learning multi-container apps.

---

## Done!

