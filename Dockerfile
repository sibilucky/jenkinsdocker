FROM alpine:latest

# Install Python and pip
RUN apk add --no-cache python3 py3-pip

# Set up a working directory
WORKDIR /app

# Copy the application code
COPY . /app

# Create and activate a virtual environment
RUN python3 -m venv venv
RUN . venv/bin/activate && pip install -r requirements.txt

# Set the virtual environment as the default Python interpreter
ENV PATH="/app/venv/bin:$PATH"

# Specify the command to run your app (replace 'app.py' with your entry point)
CMD ["python3", "app.py"]
