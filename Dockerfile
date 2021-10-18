FROM debian:stable-slim

RUN apt-get update && apt-get upgrade

RUN apt-get install -y privoxy

COPY ./config /etc/privoxy/config

RUN service privoxy restart
