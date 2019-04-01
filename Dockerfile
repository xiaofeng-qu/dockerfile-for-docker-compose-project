# Docker for the CLI11 project

FROM ubuntu:16.04

LABEL edu.uanet.xq6-devops.url="https://github.com/xiaofeng-qu/dockerfile-for-docker-compose-project" \
      edu.uanet.xq6-devops.distro="ubuntu" \
      edu.uanet.xq6-devops.osversion="16.04" \
      edu.uanet.xq6-devops.architecture="x86_64"

# Update the sytem and Install dependencies
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y dist-upgrade && \
    apt-get install -y wget \
                       make \
                       curl \
                       g++ \
                       zip

# install cmake 3.12.4 manually
RUN curl -L https://cmake.org/files/v3.12/cmake-3.12.4-Linux-x86_64.tar.gz | tar zx --strip-components=1 -C /usr/local
