from fastapi import FastAPI, Request, Form
from fastapi.templating import Jinja2Templates
from fastapi.responses import RedirectResponse
from database import search_movies_by_year, upload_movie_data
import uvicorn

# Initialize FastAPI app
app = FastAPI()

# Jinja2 templates directory
templates = Jinja2Templates(directory="templates")


@app.get("/")
def home(request: Request):
    """
    Render the homepage for searching movies.
    Args:
        request (Request): The incoming request object.

    Returns:
        HTMLResponse: The rendered index.html template.
    """
    return templates.TemplateResponse("index.html", {"request": request})


@app.post("/")
def search_movies(request: Request, year_of_release: int = Form(...)):
    """
    Handle movie search by year of release.
    Args:
        request (Request): The incoming request object.
        year_of_release (int): The release year to search for.

    Returns:
        HTMLResponse: The rendered template with search results.
    """
    results = search_movies_by_year(year_of_release)
    return templates.TemplateResponse("index.html", {"request": request, "results": results})


@app.get("/upload_data")
def upload_data(request: Request):
    """
    Render the movie upload form.
    Args:
        request (Request): The incoming request object.

    Returns:
        HTMLResponse: The rendered upload_data.html template.
    """
    return templates.TemplateResponse("upload_data.html", {"request": request})


@app.post("/upload_data")
def upload_movie_data_handler(
    request: Request,
    movie_name: str = Form(...),
    year_of_release: int = Form(...),
    box_office: float = Form(...),
    director: str = Form(...),
    producer: str = Form(...),
    cast: str = Form(...)
):
    """
    Handle movie data upload.
    Args:
        request (Request): The incoming request object.
        movie_name (str): Name of the movie.
        year_of_release (int): Release year of the movie.
        box_office (float): Box office revenue.
        director (str): Director of the movie.
        producer (str): Producer of the movie.
        cast (str): Cast details.

    Returns:
        RedirectResponse: Redirect to the homepage after successful upload.
    """
    upload_movie_data(movie_name, year_of_release, box_office, director, producer, cast)
    return RedirectResponse("/", status_code=303)


# Run the app
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)


# Run the app if executed directly
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
