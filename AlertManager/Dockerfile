# Use an official Python runtime as a parent image
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app
#ADD /workshop/HandyMicroservices/HMAlerts/ /app

RUN apt-get update;\
apt-get install -y -q man python3 python3-pip;\ 
pip3 install --upgrade pip;\
pip install --trusted-host pypi.python.org -r requirements.txt;\
ln -s /usr/bin/python3 /usr/bin/python

# Make port 8001 available to the world outside this container
EXPOSE 8001

# Run app.py when the container launches
CMD ["python", "/workshop/HandyMicroservices/HMAlerts/HMAlertService.py"]
