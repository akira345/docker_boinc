FROM ubuntu:20.04

RUN apt-get -y update \
    && apt-get -y install boinc-client \
    && rm -r /var/lib/apt/lists/*

VOLUME /data
WORKDIR /data

COPY run_boinc.sh /tmp
CMD ["/bin/sh", "/tmp/run_boinc.sh"]
