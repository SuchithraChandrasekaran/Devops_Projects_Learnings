Steps to Create and Push a Flask Application with Docker
-----------------------------

1. Project Setup
   -----------------------------

Created a folder named simple_web_app for the project.

Added the necessary files for the Flask application, including:

app.py for the Flask code.

Dockerfile for containerizing the application.

2. Running the Flask Application Locally
   -----------------------------
   
Verified that the Flask application works locally without using Docker by running it directly on Python.

3. Building the Docker Image
    -----------------------------
   
Used Docker commands to build a container image from the Dockerfile in the simple_web_app folder.

4. Running the Application in a Docker Container
   -----------------------------
  
Started a Docker container from the built image and verified the application by accessing it in a web browser.

5. Pushing the Docker Image to Docker Hub
    -----------------------------
   
Tagged the image as suchithrachandrasekaran/simple_web_app.

Pushed the image to Docker Hub, ensuring it was accessible from the repository.

6. Verifying the Image
   -----------------------------
   
Confirmed the pushed image could be pulled and used from Docker Hub.

Tools Used
  -----------------------------
  Docker Desktop for managing containers and images.

  Visual Studio Code (VS Code) for editing and building the web application, using Python and Flask 
