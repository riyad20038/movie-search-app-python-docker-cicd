import mysql.connector
from mysql.connector import pooling
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
    pool_size=5,
    **db_config
)


def search_movies_by_year(year_of_release):
    """
    Search for movies in the database by their release year.
    Args:
        year_of_release (int): The year of release for the movie.

    Returns:
        list: A list of dictionaries containing movie details.
    """
    try:
        db_connection = connection_pool.get_connection()
        db_cursor = db_connection.cursor(dictionary=True)

        query = "SELECT * FROM hollywood WHERE year_of_release = %s"
        db_cursor.execute(query, (year_of_release,))
        results = db_cursor.fetchall()

        return results
    except mysql.connector.Error as error:
        print(f"Database Error: {error}")
        return []
    finally:
        if db_cursor:
            db_cursor.close()
        if db_connection:
            db_connection.close()


def upload_movie_data(movie_name, year_of_release, box_office, director, producer, cast):
    """
    Upload movie data to the database.
    Args:
        movie_name (str): Name of the movie.
        year_of_release (int): Year the movie was released.
        box_office (float): Box office revenue.
        director (str): Director of the movie.
        producer (str): Producer of the movie.
        cast (str): Cast details of the movie.
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
    except mysql.connector.Error as error:
        print(f"Database Error: {error}")
    finally:
        if db_cursor:
            db_cursor.close()
        if db_connection:
            db_connection.close()

