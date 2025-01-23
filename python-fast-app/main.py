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
    Renders the homepage for searching movies.
    """
    return templates.TemplateResponse("index.html", {"request": request})


@app.post("/")
def search_movies(request: Request, year_of_release: int = Form(...)):
    """
    Handles movie search by year.
    """
    results = search_movies_by_year(year_of_release)
    return templates.TemplateResponse("index.html", {"request": request, "results": results})


@app.get("/upload_data")
def upload_data(request: Request):
    """
    Renders the movie upload form.
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
    Handles movie data upload.
    """
    upload_movie_data(movie_name, year_of_release, box_office, director, producer, cast)
    return RedirectResponse("/", status_code=303)

# Run the app if executed directly
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
