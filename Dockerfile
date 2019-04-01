# Docker for the CLI11 project

FROM centos:6.7

LABEL edu.uanet.xq6-devops.url="https://github.com/xiaofeng-qu/dockerfile-for-docker-compose-project" \
      edu.uanet.xq6-devops.distro="centos" \
      edu.uanet.xq6-devops.osversion="6.6" \
      edu.uanet.xq6-devops.architecture="x86_64"

# Update the system and install dependencies
RUN yum -y update && \
    yum install -y make \
                   gcc-c++ \
                   unzip \
                   tar

# Install cmake 3.12.4
RUN curl -L https://cmake.org/files/v3.12/cmake-3.12.4-Linux-x86_64.tar.gz | tar zx --strip-components=1 -C /usr/local
