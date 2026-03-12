import requests

# FETCH FROM AN API THEN PRINT

response = requests.get("https://api.github.com/users/nrenner0211")
data = response.json()
print(data["name"])  