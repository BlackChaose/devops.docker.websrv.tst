FROM debian:jessie
MAINTAINER bear85

ARG DEBIAN_FRONTEND=noninteractive

COPY ./debian.redimadrid.es.list /etc/apt/sources.list.d/debian.redimadrid.es.list

RUN apt-get update && \
    apt-get upgrade >/dev/null && \
    apt-get install -y apt-utils && \
    apt-get -y install >/dev/null \
    nginx \
    procps \
    iproute2 \
    vim \
    && apt-get autoclean >/dev/null && \
    rm -R /var/www/* && \
    mkdir -p /var/www/lab3.local/img && \
    chmod -R 0754 /var/www/lab3.local && \
    useradd nikita && \
    groupadd kalitin && \
    usermod -g kalitin nikita && \
    chown -R nikita:kalitin /var/www/lab3.local && \
    sed -i 's/\/var\/www\/html/\/var\/www\/lab3.local/g' /etc/nginx/sites-enabled/default && \
    sed -i 's/user www-data/user nikita/g' /etc/nginx/nginx.conf

COPY ./img.jpg /var/www/lab3.local/img/img.jpg
COPY ./index.html /var/www/lab3.local/index.html
COPY ./entrypoint.sh entrypoint.sh

EXPOSE 80/tcp 443/tcp

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/entrypoint.sh", "run_ws"]
