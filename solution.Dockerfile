FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip
COPY requirements.txt /app/
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY . /app
CMD ["python3", "-m", "unittest", "discover"]
# requirements.txt
# requests==2.28.2
# unittest2==1.1.0