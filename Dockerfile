# Docker for the CLI11 project

FROM opensuse/leap:15.0

LABEL edu.uanet.xq6-devops.url="https://github.com/xiaofeng-qu/dockerfile-for-docker-compose-project" \
      edu.uanet.xq6-devops.distro="opensuse" \
      edu.uanet.xq6-devops.osversion="15" \
      edu.uanet.xq6-devops.architecture="x86_64"

# Update the sytem and Install dependencies
RUN zypper refresh && \
    zypper update -y

RUN zypper install -y wget \
                      make \
                      cmake \
                      gcc-c++ \
                      tar \
                      gzip \
                      unzip
