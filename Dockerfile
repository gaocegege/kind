FROM ubuntu:16.04
MAINTAINER Ce Gao(gaocegege) "gaocegege@hotmail.com"

VOLUME ["/var/run/docker.sock"]
VOLUME ["/var/lib/localkube"]

COPY ./cmd/localkube/localkube /usr/local/bin/localkube

ENTRYPOINT localkube
