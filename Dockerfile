FROM ubuntu:24.04

RUN apt update -y && \
    apt install -y build-essential cmake libboost-all-dev libdeal.ii-dev

WORKDIR /cmake-exercise

COPY . .
