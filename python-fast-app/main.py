"""
FastAPI application for managing Hollywood movie data.
"""

from fastapi import FastAPI, Form, Request
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse
from database import search_movies_by_year, upload_movie_data
import uvicorn

# Initialize FastAPI app and templates
app = FastAPI()
templates = Jinja2Templates(directory="templates")


@app.get("/", response_class=HTMLResponse)
def home(request: Request):
    """
    Render the home page.

    Args:
        request (Request): The incoming HTTP request.

    Returns:
        TemplateResponse: Rendered HTML template for the home page.
    """
    return templates.TemplateResponse("index.html", {"request": request})


@app.post("/", response_class=HTMLResponse)
def search_movies(request: Request, year_of_release: int = Form(...)):
    """
    Search for movies by year of release and display results.

    Args:
        request (Request): The incoming HTTP request.
        year_of_release (int): The release year of the movies to search.

    Returns:
        TemplateResponse: Rendered HTML template with search results.
    """
    results = search_movies_by_year(year_of_release)
    return templates.TemplateResponse("index.html", {"request": request, "results": results})


@app.get("/upload_data", response_class=HTMLResponse)
def upload_data(request: Request):
    """
    Render the movie data upload page.

    Args:
        request (Request): The incoming HTTP request.

    Returns:
        TemplateResponse: Rendered HTML template for data upload.
    """
    return templates.TemplateResponse("upload_data.html", {"request": request})


@app.post("/upload_data", response_class=HTMLResponse)
def upload_movie_data_handler(
    request: Request,
    movie_name: str = Form(...),
    year_of_release: int = Form(...),
    box_office: float = Form(...),
    director: str = Form(...),
    producer: str = Form(...),
    cast: str = Form(...),
):
    """
    Handle movie data upload form submission.

    Args:
        request (Request): The incoming HTTP request.
        movie_name (str): Name of the movie.
        year_of_release (int): Year the movie was released.
        box_office (float): Box office earnings.
        director (str): Name of the director.
        producer (str): Name of the producer.
        cast (str): Cast details.

    Returns:
        TemplateResponse: Rendered HTML template for data upload.
    """
    upload_movie_data(movie_name, year_of_release, box_office, director, producer, cast)
    return templates.TemplateResponse("upload_data.html", {"request": request, "message": "Movie uploaded successfully!"})


# Run the app
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=80)
