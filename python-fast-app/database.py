"""
Database utility module for connecting to MySQL and performing queries.
"""

import os
import time
from dotenv import load_dotenv
from mysql.connector import connect, Error

# Load environment variables from .env file
load_dotenv()

# Wait for MySQL container to start up
time.sleep(5)  # Adjust the delay as needed

# Database connection configuration
DB_CONFIG = {
    "host": os.getenv("DB_HOST"),
    "port": int(os.getenv("DB_PORT", 3306)),  # Default to port 3306 if not set
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASSWORD"),
    "database": os.getenv("DB_NAME"),
}


def search_movies_by_year(year_of_release):
    """
    Search movies in the database by year of release.

    Args:
        year_of_release (int): The release year of the movie.

    Returns:
        list: A list of tuples containing movie details.
    """
    try:
        with connect(**DB_CONFIG) as db_connection:
            with db_connection.cursor() as db_cursor:
                query = "SELECT * FROM hollywood WHERE year_of_release = %s"
                db_cursor.execute(query, (year_of_release,))
                return db_cursor.fetchall()
    except Error as e:
        print(f"Error: {e}")
        return []


def upload_movie_data(movie_name, year_of_release, box_office, director, producer, cast):
    """
    Upload movie data to the database.

    Args:
        movie_name (str): Name of the movie.
        year_of_release (int): Year the movie was released.
        box_office (float): Box office earnings.
        director (str): Name of the director.
        producer (str): Name of the producer.
        cast (str): Cast details.
    """
    try:
        with connect(**DB_CONFIG) as db_connection:
            with db_connection.cursor() as db_cursor:
                query = """
                INSERT INTO hollywood (movie_name, year_of_release, box_office, director, producer, cast)
                VALUES (%s, %s, %s, %s, %s, %s)
                """
                db_cursor.execute(query, (movie_name, year_of_release, box_office, director, producer, cast))
                db_connection.commit()
    except Error as e:
        print(f"Error: {e}")
