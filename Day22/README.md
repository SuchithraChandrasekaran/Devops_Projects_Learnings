Task 1: Work with Docker Volumes
-----------------------

1) Create a Volume:

        docker volume create my_volume

    Verify: 

        docker volume ls

2) Use the Volume in a Container:

    Run a container with volume:

        docker run -d --name volume_test -v my_volume:/data nginx

3) Inspect the Volume:

        docker volume inspect my_volume

4) Modify Data Using Volume:

    Access the container: 

        docker exec -it volume_test bash

    Inside the container, create a file

        echo "Hello Suchithra, Docker Volume test!" > /data/test_file.txt

    Exit the container and start a new container using the same volume

        docker run --rm -v my_volume:/data alpine cat /data/test_file.txt


Task 2: Understand Docker Network
-----------------------

1)List Docker Networks:

    docker network ls

2)Create a Custom Bridge Network:

    docker network create my_bridge_network

3)Run Containers in the Custom Network:

  Start two containers:

      docker run -dit --name container1 --network my_bridge_network alpine sh

      docker run -dit --name container2 --network my_bridge_network alpine sh

4)Test Communication Between Containers:

  Connect to container1:

      docker exec -it container1 sh

  From container1, ping container2 using its name:

      ping container2
      
  Result: Successful ping response.

5)Inspect the Network:

      docker network inspect my_bridge_network

6)Experiment with Network Isolation:

  Start a container in the default bridge network:

      docker run -dit --name container3 alpine sh

  Try pinging container3 from container1 (It should fail).




