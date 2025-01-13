import requests 

# Sending a GET request
response = requests.get("https://jsonplaceholder.typicode.com/posts/1")
print(response.json())

# Sending a POST request
data = {"title": "DevOps Task", "body": "Automate processes", "userId": 1}
response = requests.post("https://jsonplaceholder.typicode.com/posts", json=data)
print(response.json())
