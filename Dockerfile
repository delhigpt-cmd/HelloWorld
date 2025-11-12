# Use Eclipse Temurin JDK
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy everything
COPY . .

# Compile Java source files
RUN mkdir -p bin
RUN javac -d bin src/*.java

# Run Hello.class when container starts
CMD ["java", "-cp", "bin", "Hello"]
