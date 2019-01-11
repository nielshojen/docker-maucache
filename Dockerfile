FROM ubuntu:18.04

RUN apt-get update -q && \
    apt-get install -yqq curl git nginx && \
    git clone https://github.com/pbowden-msft/MAUCacheAdmin.git /tmp/MAUCacheAdmin && \
    cp /tmp/MAUCacheAdmin/MAUCacheAdmin /usr/local && \
    chmod +x  /usr/local/MAUCacheAdmin && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY run.sh /

VOLUME ["/var/www/html", "/MAUCache"]

EXPOSE 80

ENTRYPOINT ["/run.sh"]
