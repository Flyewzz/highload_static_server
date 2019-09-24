FROM ubuntu:18.04

# For Python
RUN apt-get -y update
RUN apt-get install -y python3
RUN apt-get install -y python3-dev
RUN apt-get -y install python3-pip

# For server
ADD . ./server/
RUN pip3 install -r ./server/requirements.txt

# For listening
EXPOSE 80

# Start command
CMD python3 ./server/server_start.py