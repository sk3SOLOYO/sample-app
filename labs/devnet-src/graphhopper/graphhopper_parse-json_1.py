import requests
import urllib.parse

geocode_url = "https://graphhopper.com/api/1/geocode?"
route_url = "https://graphhopper.com/api/1/route?"
loc1 = "Washington, D.C."
loc2 = "Baltimore, Maryland"
key = "ecb8b42c-1c90-4f7e-a7c5-8fdb402a10a5" 

url = geocode_url + urllib.parse.urlencode({"q": loc1, "limit": "1", "key": key})
replydata = requests.get(url)
json_data = replydata.json()
json_status = replydata.status_code

print(json_data)