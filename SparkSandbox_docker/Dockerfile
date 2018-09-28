# Use an official Python runtime as a parent image
FROM ubuntu:16.04

#ENV DEBIAN_FRONTEND=noninteractive

# Set the working directory to /app
WORKDIR /app
USER root


RUN apt-get update;\
apt-get install -y -q man python3 python3-pip git curl wget tar gzip default-jdk scala zip unzip;\
pip3 install --upgrade pip

# Copy the current directory contents into the container at /app
ADD . /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt;\
ln -s /usr/bin/python3 /usr/bin/python;\
curl -s "https://get.sdkman.io" | bash

RUN echo "echo \"\"" >> /root/.bashrc;\
echo "echo \"#######################################################################################\"" >> /root/.bashrc;\
echo "echo \"###                    run 'sdk install sbt' to install sbt                         ###\"" >> /root/.bashrc;\
echo "echo \"#######################################################################################\"" >> /root/.bashrc;\
echo "echo \"\"" >> /root/.bashrc
#RUN source "/root/.sdkman/bin/sdkman-init.sh" && sdk install sbt

WORKDIR /usr/local
RUN wget http://www-eu.apache.org/dist/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz;\
tar xvf spark-2.3.1-bin-hadoop2.7.tgz;\
wget http://archive.apache.org/dist/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz;\
tar xvf hadoop-2.7.3.tar.gz;\
echo "export PATH=$PATH:/usr/local/spark/bin" >> /root/.bashrc;\
echo "export PATH=$PATH:/usr/local/hadoop-2.7.3/bin" >> /root/.bashrc;\
echo "export LD_LIBRARY_PATH=/usr/local/hadoop-2.7.3/lib/native" >> /root/.bashrc

WORKDIR /app

# Make port 8003 available to the world outside this container
EXPOSE 8003 4040 8080 6066 7077

# Run app.py when the container launches
#CMD ['command','args']

