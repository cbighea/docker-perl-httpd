FROM debian:stretch-slim

RUN \
    DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -yq \
        build-essential \
        apt-utils \
        ssl-cert \
        apache2 \
        apache2-utils \
        apache2-dev \
        libapache2-mod-perl2 \
        libapache2-mod-perl2-dev \
        libcgi-pm-perl \
        liblocal-lib-perl \
        cpanminus \
        libxml2-dev \
        libexpat1-dev \
        libssl-dev \
        libapreq2-dev \
        zlibc \
        zlib1g \
        zlib1g-dev \
        zip && \
    cpanm Carton && \
    a2enmod cgid && \
    a2enmod rewrite && \
    a2dissite 000-default && \
    apt-get -y clean