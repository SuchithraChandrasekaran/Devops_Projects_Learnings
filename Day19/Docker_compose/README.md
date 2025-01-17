
**Docker Compose** to set up a simple environment with two services:
----------------------

1. **Web App (Nginx)** to serve as the frontend.
2. **Database (MySQL)** to simulate a backend service.

1) Create docker-compose.yml
   ----------------------

Create a file named docker-compose.yml with the configuration details on web app and db

2) Start Services
   ----------------------

Run the following command to start the environment:

    docker-compose up -d
  
3) Verify
   -------------------------
  Check running containers:

      docker ps

  Access the Nginx web service:
    
     http://localhost:8080.

  Access the MySQL database

     docker exec -it <db_container_name> mysql -u user -ppassword mydb

4) Stop and Clean Up
    --------------------------
  
  When done, stop and remove all containers:

    docker-compose down


