FROM alpine:latest

# Create and set the working directory
WORKDIR /app

# Copy the script into the container
COPY hello.sh /app/

# Ensure the script is executable
RUN chmod +x /app/hello.sh

# Set the default command to run the script
CMD ["./hello.sh"]