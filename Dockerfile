FROM ubuntu:16.04

ENV PROJECT_URL http://setiathome.berkeley.edu/
ENV AUTH_KEY 123456789

RUN apt-get -y update&&apt-get -y upgrade
RUN apt-get -y install boinc-client

VOLUME /data
WORKDIR /data

COPY run_boinc.sh /tmp
CMD ["/bin/sh", "/tmp/run_boinc.sh"]
