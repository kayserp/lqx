FROM debian:stretch
LABEL maintainer="Lqx Developers <dev@lqx.org>"
LABEL description="Dockerised LqxCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
