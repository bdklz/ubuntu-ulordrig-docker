FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update
RUN apt-get install -y git build-essential gcc g++ cmake libuv1-dev libmicrohttpd-dev openssl libssl-dev
RUN git clone https://github.com/UlordChain/ulordrig.git /app
RUN mkdir /app/build
RUN cmake -DWITH_HTTPD=ON .
RUN make
ENTRYPOINT  ["./ulordrig"]
