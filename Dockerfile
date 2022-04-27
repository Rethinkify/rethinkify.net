FROM ubuntu:latest

# Install packages
RUN apt-get update \
    && apt-get install -y \
    nginx \
    && rm -rf /var/lib/apt/lists/

# Copy over files
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY public /public

# Start the service
RUN service nginx start
