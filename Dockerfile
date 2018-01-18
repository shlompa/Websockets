FROM python:3.6

WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install Nginx.
RUN apt-get update && apt-get install nginx -y

RUN pip3.6 install websockets

# Make port 80 available to the world outside this container
EXPOSE 80 

COPY index.html /var/www/html/index.html
CMD  service nginx start && python3.6 websocketSh.py 
