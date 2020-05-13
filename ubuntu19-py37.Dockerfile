FROM ubuntu:19.04

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
