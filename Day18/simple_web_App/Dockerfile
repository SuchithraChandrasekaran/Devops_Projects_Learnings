# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code to the container
COPY . /app

# Install the necessary dependencies
RUN pip install --no-cache-dir flask

# Expose the port the app will run on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]