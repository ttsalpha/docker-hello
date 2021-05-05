# Use the OpenJDK 15 image as the base image
FROM openjdk:15.0.1

# Create new app directory for this app
RUN mkdir /docker-hello

# Copy to image
COPY out/production/docker-hello/ /docker-hello

# Set the directory for excuting future commands
WORKDIR /docker-hello

# Run the main class
CMD java Main