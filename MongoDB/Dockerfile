# Use an official Python runtime as a parent image
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4;\
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list;\
apt-get update;\
apt-get install -y mongodb

# Make port 8000 available to the world outside this container
EXPOSE 27017

# Run app.py when the container launches
#CMD ["python", "app.py"]
CMD ["mongod",  "--dbpath",  "."]