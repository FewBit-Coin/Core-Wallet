FROM debian:stretch
LABEL maintainer="FewBit Developers <dev@fewbit.net>"
LABEL description="Dockerised FewBitCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
