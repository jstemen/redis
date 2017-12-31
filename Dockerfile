FROM jstemen/arm32v7-alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/var/lib/redis"]

ADD VERSION . 
EXPOSE 6379

WORKDIR /root
CMD ["/bin/s6-svscan", "/etc/s6"]

RUN apk update && \
  apk add \
    redis && \
  rm -rf \
    /var/cache/apk/*

ADD rootfs /
