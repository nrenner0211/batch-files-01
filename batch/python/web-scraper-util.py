import requests
from bs4 import BeautifulSoup

# SIMPLE WEB SCRAPER: JUST INPUT THE WEBSITE YOU WANT TO SCRAPE, AND CHANGE ELEMENT (H1, H2, H3, p) FOR DESIRED RESULTS. -NR

response = requests.get("https://nixwebdev.com/")
soup = BeautifulSoup(response.text, "html.parser")
print(soup.find("h1").text)  # Grab the h1 tag