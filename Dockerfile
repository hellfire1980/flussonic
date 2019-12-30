FROM ubuntu:18.04

ARG BRANCH=master

RUN apt-get update && apt-get -y install wget gnupg
RUN echo "deb http://apt.flussonic.com/repo/ ${BRANCH}/" > /etc/apt/sources.list.d/flussonic.list
RUN wget -q -O - http://apt.flussonic.com/binary/gpg.key | apt-key add -

RUN apt update && apt -y install flussonic flussonic-transcoder

EXPOSE 80 8080 1935 554
VOLUME ["/etc/flussonic", "/var/log/flussonic", "/srv/storage"]

#ENTRYPOINT ["/opt/flussonic/bin/flussonic", "-n", "flussonic@127.0.0.1", "-p", "/var/run/flussonic/pid", "-l", "/var/log/flussonic", "-e", "production"]
ENTRYPOINT ["service", "flussonic", "run"]
