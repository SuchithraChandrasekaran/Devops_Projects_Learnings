Steps to Run and View The Project in Browser
----------------

Prerequisites
-----------

Docker Installed: Ensure Docker is installed and running on the system,(Docker desktop).

Jenkins Setup: Jenkins should be properly set up and configured.

Project Files: The project should include all necessary files such as Dockerfile, application code, and configuration files.

-----------------
Steps
-----------------
1. Build the Docker Image

    i) Navigate to the project directory where the Dockerfile is located.

        cd /path to the project/

    ii) Build the Docker image.

        docker build -t <Docker_image_name> .

2. Run the Docker Container

    i) Run the container, exposing the necessary ports.
        
          docker run -d --name <the_container_name> -p 8080:8080 <Docker_image_name>
      
       Replace 8080 with the port of the application using inside the container.

   ii) Verify the container is running:
      
          docker ps

3. Access the Application in Browser

      i) Open your browser and navigate to:

            http://localhost:8080

      ii) If the page doesn’t load, check the logs:

            docker logs <Docker_container_name>

Common Issues
-----------------------------

Port Conflict: If the port is already in use, modify the -p flag (e.g., -p 8081:8080).

Application Crashes: Ensure all dependencies are installed and paths are correct.


-----------------------------
DevOps Learning Using Jenkins
-----------------------------

Core Concepts
-----------------------------

1) Pipeline Automation:

    Used Jenkins to automate the build, test, and deploy cycle of the application.
    
    Created a Jenkinsfile to define the pipeline stages.

2) Integration with Docker:

    Configured Jenkins to build Docker images and deploy containers.
    
    Managed containerized applications for consistent environments.

3) Continuous Integration (CI):

    Integrated Jenkins with GitHub for automatic builds on code pushes.
    
    Ran unit tests as part of the pipeline to ensure code quality.

4) Continuous Deployment (CD):

    Automated deployment to a test or staging environment after successful builds.


5) Monitoring and Logs:

    Analyzing Jenkins logs and container logs for debugging.
    
    Ensured builds and deployments were successful using Jenkins dashboards.

Tools Used
-----------

Jenkins: For CI/CD automation.

Docker: For containerizing the application.

GitHub: For version control and integration with Jenkins.


Key Learnings
-----------------------------

    1) Automation Reduces Manual Effort: Automating pipelines in Jenkins saved time and minimized errors.
    
    2) Docker Simplifies Deployment: Containerized applications are portable and consistent across environments.
    
