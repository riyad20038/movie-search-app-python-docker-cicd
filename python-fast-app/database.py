import mysql.connector
from mysql.connector import pooling
import time
from dotenv import load_dotenv
import os

# Load environment variables from .env file
load_dotenv()

# Database connection pool configuration
db_config = {
    "host": os.getenv("DB_HOST"),
    "port": int(os.getenv("DB_PORT")),
    "user": os.getenv("DB_USER"),
    "password": os.getenv("DB_PASSWORD"),
    "database": os.getenv("DB_NAME"),
}

# Create a connection pool
connection_pool = mysql.connector.pooling.MySQLConnectionPool(
    pool_name="hollywood_pool",
    pool_size=5,  # Adjust based on your expected load
    **db_config
)

def search_movies_by_year(year_of_release):
    """
    Searches for movies released in a specific year.
    """
    try:
        db_connection = connection_pool.get_connection()
        db_cursor = db_connection.cursor(dictionary=True)
        
        query = "SELECT * FROM hollywood WHERE year_of_release = %s"
        db_cursor.execute(query, (year_of_release,))
        results = db_cursor.fetchall()

        return results
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return []
    finally:
        if db_cursor:
            db_cursor.close()
        if db_connection:
            db_connection.close()


def upload_movie_data(movie_name, year_of_release, box_office, director, producer, cast):
    """
    Uploads a new movie's data to the database.
    """
    try:
        db_connection = connection_pool.get_connection()
        db_cursor = db_connection.cursor()

        query = """
            INSERT INTO hollywood (movie_name, year_of_release, box_office, director, producer, cast) 
            VALUES (%s, %s, %s, %s, %s, %s)
        """
        values = (movie_name, year_of_release, box_office, director, producer, cast)
        db_cursor.execute(query, values)
        db_connection.commit()
    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        if db_cursor:
            db_cursor.close()
        if db_connection:
            db_connection.close()
