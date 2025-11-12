# Use official OpenJDK image
FROM openjdk:20-jdk

# Set working directory
WORKDIR /app

# Copy source code
COPY src ./src

# Create bin folder and compile
RUN mkdir bin
RUN javac src/HelloWorld.java -d bin

# Set working directory for execution
WORKDIR /app/bin

# Run Java program
CMD ["java", "HelloWorld"]
