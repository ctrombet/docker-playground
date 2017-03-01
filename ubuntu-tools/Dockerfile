FROM ubuntu
MAINTAINER Cristian Trombetta

RUN apt-get update && apt-get install -y vim wget curl net-tools nginx apache2 haproxy lynx

ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg

EXPOSE 80
