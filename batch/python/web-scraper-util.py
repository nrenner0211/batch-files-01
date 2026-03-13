import requests
from bs4 import BeautifulSoup

# Simple web scraper: input the URL you would like to scrape, then insert the element (H1, H2, H3, p) for desired results. -NR

headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
}

# Insert URL here
response = requests.get("https://en.wikipedia.org/wiki/Enhanced_Interior_Gateway_Routing_Protocol", headers=headers)
soup = BeautifulSoup(response.text, "html.parser")

# Insert desired element here (H1, H2, p) 
for p in soup.find_all("p"):
    print(p.text.strip())

# Optional cases for more precise results. Comment out if not needed.

# # Limit results (e.g. first 5 paragraphs)
# soup.find_all("p", limit=5)

# # Filter by class name if desired
# soup.find_all("p", class_="intro")

# # Filter by id
# soup.find("div", id="main-content")

# # Get all links on the page
# for a in soup.find_all("a", href=True):
#     print(a["href"])

# # --- OR scrape multiple tag types at once ---
# for element in soup.find_all(["h1", "h2", "h3", "p"]):
#     print(f"{element.name.upper()}: {element.text.strip()}")