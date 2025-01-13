import yaml

# Writing to a YAML file
data = {"name": "DevOps", "tools": ["Docker", "Kubernetes", "Terraform"]}
with open("C:\\Suchithra_Dir\\Devops\\Python\\newdata.yaml", "w") as f:
    yaml.dump(data, f)

# Reading from a YAML file
with open("C:\\Suchithra_Dir\\Devops\\Python\\data.yaml", "r") as f:
    loaded_data = yaml.safe_load(f)
print(loaded_data)
