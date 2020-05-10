FROM ubuntu:20.04

# Global environment settings
ENV BOINC_GUI_RPC_PASSWORD="123" \
    BOINC_REMOTE_HOST="127.0.0.1" \
    BOINC_CMD_LINE_OPTIONS="" \
    DEBIAN_FRONTEND=noninteractive

# BOINC RPC port
EXPOSE 31416

RUN apt-get -y update \
    && apt-get -y install boinc-client \
    && rm -r /var/lib/apt/lists/*

VOLUME /data
WORKDIR /data

COPY run_boinc.sh /tmp
CMD ["/bin/sh", "/tmp/run_boinc.sh"]
