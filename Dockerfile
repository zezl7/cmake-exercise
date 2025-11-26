FROM ubuntu:24.04

RUN apt update -y && \
    apt install -y build-essential cmake unzip wget libboost-all-dev libdeal.ii-dev

WORKDIR /cmake-exercise

RUN wget https://github.com/jbeder/yaml-cpp/archive/refs/tags/yaml-cpp-0.6.3.tar.gz -O yaml-cpp.tar.gz && \
    tar -xzf yaml-cpp.tar.gz && \
    YAML_DIR=$(ls -d yaml-cpp-*) && \
    cd $YAML_DIR && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make && \
    make install && \
    cd /cmake-exercise && \
    rm -rf yaml-cpp.tar.gz $YAML_DIR

ENV LD_LIBRARY_PATH=/usr/local/lib

WORKDIR /cmake-exercise
    