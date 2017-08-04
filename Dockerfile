FROM debian:stretch

LABEL maintainer="kristeryw@gmail.com"

RUN \
    apt-get update && \
    DEBIAN_FRONTEND='noninteractive' apt-get -y install \
        gearman-job-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 4730

ENTRYPOINT [ "gearmand" ]
