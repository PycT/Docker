# Use an official Python runtime as a parent image
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN apt-get update;\
apt-get install -y -q man python3 python3-pip;\ 
pip3 install --upgrade pip;\
pip install --trusted-host pypi.python.org -r requirements.txt;\
ln -s /usr/bin/python3 /usr/bin/python

WORKDIR /workshop/HandyMicroservices/HMAlerts

# Make port 8003 available to the world outside this container
EXPOSE 8003

# Run app.py when the container launches
CMD ["python", "HMAlerts_client.py"]
