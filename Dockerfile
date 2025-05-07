# Use the official OpenJDK image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file and configuration files into the container
COPY EaglerSPRelay.jar /app/
COPY relayConfig.ini /app/
COPY relays.txt /app/
COPY run.sh /app/

# Make sure the shell script is executable
RUN chmod +x run.sh

# Expose the port your application will run on (check the config file for the port)
EXPOSE 8080

# Command to run the JAR file using the shell script or directly using Java
CMD ["java", "-jar", "EaglerSPRelay.jar"]
