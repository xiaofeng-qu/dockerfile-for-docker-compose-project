# Docker for the CLI11 project

FROM ubuntu:18.04

LABEL edu.uanet.xq6-devops.url="https://github.com/UAComputerScience/dockerfile-xiaofeng-qu/tree/Ubuntu_18.04" \
      edu.uanet.xq6-devops.distro="ubuntu" \
      edu.uanet.xq6-devops.osversion="18.04" \
      edu.uanet.xq6-devops.architecture="x86_64"

# Update the sytem and Install dependencies
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y dist-upgrade && \
    apt-get install -y wget \
                       make \
                       cmake \
                       g++ \
                       zip
