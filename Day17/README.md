Custom Docker Image
-------------------
This project demonstrates how to 
	create, 
	build, and
	run a custom Docker image with a simple script (hello.sh) 
  using the Alpine Linux base image in VS Code and Docker Desktop.

Prerequisites:
-------------------
  Before proceeding, ensure you have the following installed on your local machine:

	1.Docker Desktop

	2.VS Code
	
Steps
-------------------
1. Create a New Folder
	Create a new folder for your project. You can name it something like custom-docker.

2. Open the Folder in VS Code
	Open VS Code.
	Go to File > Open Folder... and select the folder you created.
3. Create the hello.sh Script
	In VS Code, create a file named hello.sh inside your project folder and edit it to display some message 

4. Create the Dockerfile

	In the same folder, create a file named Dockerfile which 


		# Use Alpine Linux as a base image

		# Set the working directory inside the container

		# Copy the hello.sh script into the container

		# Make the script executable

		# Set the default command to run the script

5. Build the Docker Image

	Open the integrated terminal in VS Code (Terminal > New Terminal).

	In the terminal, run the following command to build the Docker image:
		docker build -t custom-docker-image .
	

6. Run the Docker Container

	After the image is built, run the container with this command:
		docker run custom-docker-image
--------------------------------------------------------


Here's how it works:
--------------------------------------------------------
The hello.sh file should be present in your project folder (i.e., the folder where the Dockerfile is located) for it to be copied into the /app folder inside the container during the build process.

	Local Directory (Windows/VS Code):

		The hello.sh file should be in the same directory as your Dockerfile on your local machine (i.e., in your custom-docker folder).

	Docker Container:

		During the Docker build process, the COPY hello.sh /app/ command in the Dockerfile will copy the hello.sh script from your local directory to the /app directory inside the Docker container.

This is how the file will be available inside the container to execute.

Troubleshooting
-------------------
If you encounter any issues, try the following:

	# Ensure Docker Desktop is installed and running.
	
	# Ensure the hello.sh script has LF line endings (check this in VS Code in the bottom-right corner).
	
	# If the script doesn't run correctly, ensure the chmod +x line is included in the Dockerfile.
