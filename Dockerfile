# Dockerfile
FROM alpine:latest

# Install any necessary packages (e.g., for a web server or runtime)
RUN apk add --no-cache python3 py3-pip

# Copy application files (adjust this as needed)
WORKDIR /app
COPY . /app

# Install any Python dependencies (if using Python)
RUN pip3 install -r requirements.txt

# Set the command to run your app (replace 'app.py' with your app's entry point)
CMD ["python3", "app.py"]
