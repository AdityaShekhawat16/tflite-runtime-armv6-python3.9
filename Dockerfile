ARG IMAGE
FROM debian:bullseye

COPY update_sources.sh /
RUN /update_sources.sh

RUN dpkg --add-architecture armhf
# RUN dpkg --add-architecture arm64
RUN apt-get update && \
    apt-get install -y \
      debhelper \
      dh-python \     
      pybind11-dev \     
      python3-all \
      python3-setuptools \
      python3-wheel \
      python3-numpy \
      python3-pip \
      libpython3-dev \
      libpython3-dev \
      crossbuild-essential-armhf \
      zlib1g-dev  \
      curl \
      unzip \
      git && \
    apt-get clean
RUN python3 -m pip install --upgrade pip
RUN pip install pybind11
RUN pip3 install pip --upgrade
RUN pip3 install pybind11
