import json

# Writing to a JSON file
data = {"name": "DevOps", "tools": ["Docker", "Kubernetes", "Terraform"]}
with open("C:\\Suchithra_Dir\\Devops\\Python\\newdata.json", "w") as f:
    json.dump(data, f, indent=4)

# Reading from a JSON file
with open("C:\\Suchithra_Dir\\Devops\\Python\\data.json", "r") as f:
    loaded_data = json.load(f)
print(loaded_data)
