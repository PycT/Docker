# Use an official Python runtime as a parent image
FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive

# Set the working directory to /app
WORKDIR /DevEnv

# Copy the current directory contents into the container at /app
ADD . /DevEnv

RUN apt-get update;\
apt-get install man python python-pip python-bs4 -q -y;\
pip install --upgrade pip;\ 
pip install --trusted-host pypi.python.org -r requirements.txt;
# Make port 80 available to the world outside this container
#EXPOSE 80

# Run app.py when the container launches
#CMD ["python", "app.py"]
