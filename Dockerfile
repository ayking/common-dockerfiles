FROM ubuntu:18.04

WORKDIR /usr/src/

RUN apt-get update && apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev wget libbz2-dev
RUN wget https://www.python.org/ftp/python/3.7.7/Python-3.7.7.tgz
RUN tar -xf Python-3.7.7.tgz

WORKDIR /usr/src/Python-3.7.7

RUN ./configure --enable-optimizations
RUN make -j 8
RUN make install

RUN rm -rf Python-3.7.7.tgz Python-3.7.7
