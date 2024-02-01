from selenium.webdriver.common.by import By
from selenium import webdriver
from bs4 import BeautifulSoup
from fastapi import FastAPI, HTTPException
from fastapi.responses import JSONResponse
import mysql.connector
import json

app = FastAPI()

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="scrap_imdb"
)

cursor = db.cursor()

def get_html_content(url):
    driver = webdriver.Chrome()
    driver.get(url)
    html_content = driver.page_source
    driver.quit()
    return html_content

def save_to_json(data, filename):
    with open(filename, 'w') as json_file:
        json.dump(data, json_file, indent=2)

@app.get("/top100movies", response_class=JSONResponse)
def get_top_100_movies():
    url = 'https://www.imdb.com/chart/top/?ref_=nv_mv_250'
    html_content = get_html_content(url)
    soup = BeautifulSoup(html_content, 'html.parser')

   
    movie_list = soup.find('ul', {'class': 'ipc-metadata-list'})

    
    if movie_list is None:
        raise HTTPException(status_code=500, detail="Error: Movie list not found on the page.")

    rows = movie_list.find_all('li', {'class': 'ipc-metadata-list-summary-item'})

    
    for i, row in enumerate(rows[:100]):
        title = row.find('div', {'class': 'ipc-title'}).find('h3')
        score = row.find('div', {'class': 'cli-ratings-container'}).find('span')

        if title is not None and score is not None:
            movie_data = {
                'Rank': i + 1,
                'Title': title.text.strip(),
                'Rating': score.text.strip()
            }

            insert_query = "INSERT INTO top_movies (Rank, Title, Rating) VALUES (%s, %s, %s)"
            cursor.execute(insert_query, (movie_data['Rank'], movie_data['Title'], movie_data['Rating']))
            db.commit()

            json_filename = f'movie_{i + 1}.json'
            save_to_json(movie_data, json_filename)

    return {"message": "Data inserted into MySQL database and JSON files created."}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
