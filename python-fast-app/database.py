import mysql.connector
import time
from dotenv import load_dotenv
import os

# Load environment variables from .env file
load_dotenv()

# Wait for MySQL container to start up
time.sleep(5)  # Adjust the delay as needed

# Database connection configuration
db_config = {
    "host": os.getenv("DB_HOST"),
    "port": int(os.getenv("DB_PORT")),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASSWORD"),
    "database": os.getenv("DB_NAME"),
}

# Establish a database connection
db_connection = mysql.connector.connect(**db_config)
db_cursor = db_connection.cursor()

def search_movies_by_year(year_of_release):
    db_connection = mysql.connector.connect(**db_config)  # Establish a new database connection
    db_cursor = db_connection.cursor()

    query = "SELECT * FROM hollywood WHERE year_of_release = %s"
    db_cursor.execute(query, (year_of_release,))
    results = db_cursor.fetchall()

    db_cursor.close()
    db_connection.close()

    return results


def upload_movie_data(movie_name, year_of_release, box_office, director, producer, cast):
    query = "INSERT INTO hollywood (movie_name, year_of_release, box_office, director, producer, cast) VALUES (%s, %s, %s, %s, %s, %s)"
    values = (movie_name, year_of_release, box_office, director, producer, cast)
    db_cursor.execute(query, values)
    db_connection.commit()
