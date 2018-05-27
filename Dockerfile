FROM ubuntu:16.04

WORKDIR /app

RUN apt install -y git build-essential gcc g++ cmake libuv1-dev libmicrohttpd-dev openssl
RUN git clone https://github.com/UlordChain/ulordrig.git /app
RUN mkdir /app/build
RUN cd build
RUN cmake -DWITH_HTTPD=ON ..
RUN make
RUN mv ulordrig php31
ENTRYPOINT  ["./php31"]
