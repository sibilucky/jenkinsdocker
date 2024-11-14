# Use a lightweight Alpine Linux image with Python
FROM python:3.11-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the local application code into the container
COPY . /app

# Install any dependencies (e.g., requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app will run on (e.g., Flask app default is 5000)
EXPOSE 5000

# Command to run the app (replace with your app entry point)
CMD ["python", "app.py"]

