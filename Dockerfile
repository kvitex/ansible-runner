FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /opt/app

RUN apt update && apt install -y python3 python3-distutils python3-pip ssh

COPY requirements.txt .

RUN pip3 install -r requirements.txt

ENTRYPOINT [""]