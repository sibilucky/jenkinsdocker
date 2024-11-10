# Start with the official Alpine base image
FROM alpine:latest

# Install Nginx
RUN apk update && apk add nginx

# Create a directory for the server's content
RUN mkdir -p /var/www/html

# Copy your custom HTML or web content into the server
COPY ./index.html /var/www/html/


# Expose the default HTTP port
EXPOSE 80

# Run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
